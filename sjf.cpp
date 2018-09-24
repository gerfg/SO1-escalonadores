#include "sjf.h"

SJF::SJF(std::vector<Process> processList){
    respostaMedia = 0;
    retornoMedio = 0;
    esperaMedia = 0;

    // primeira ordenacao para adicionar o primeiro elemento na lista de execucao
    std::sort(processList.begin(), processList.end(), compareProcessSJF);
    
    /*
        primeiro elemento adicionado para usar como referencia
        nos proximos que serao adicionados na executionList
    */
    executionList.push_back(processList[0]);
    processList.erase(processList.begin());
    
    executionList[0].startExecution = executionList[0].tempoDeChegada;
    executionList[0].endExecution = executionList[0].startExecution + executionList[0].tempoDeExecucao;

    // -----------------------------------------------------------------------------

    createExecutionList(&executionList, &processList);
}

void createExecutionList(std::vector<Process> *executionList, std::vector<Process> *processList) {
    int lastExecutedTime = (*executionList)[0].endExecution;
    std::vector<Process> arrivedProcesses;

    while((*processList).size() != 0 || arrivedProcesses.size() != 0){
    
        // Atualiza a lista de processos com os processos que chegaram
        getArrivedProcesses(processList, &arrivedProcesses, &lastExecutedTime);

        // executa o processo com menor tempo de execucao
        (*executionList).push_back(arrivedProcesses[0]);
        arrivedProcesses.erase(arrivedProcesses.begin());

        // atualiza o tempo do ultimo processo adicionado a lista de execucao
        updateProcessTime(executionList, &lastExecutedTime);
    }
}

void getArrivedProcesses(std::vector<Process> *processList, std::vector<Process> *arrivedProcesses, int *lastExecutedTime) {
    int i = 0;
    while((*processList)[i].tempoDeChegada <= *lastExecutedTime && i != (*processList).size()){
        (*arrivedProcesses).push_back((*processList)[i]);
        i++;
    }
    
    /*
        trecho responsavel por tratar o problema da lista de processos recem chegados estar
        vazia.
        Para resolver é atualizado o valor do ultimo processo executado para o proximo que 
        será executado.
    */
    if ((*arrivedProcesses).size() == 0) {
        *lastExecutedTime = (*processList)[0].tempoDeChegada;
        i = 0;
        while((*processList)[i].tempoDeChegada <= *lastExecutedTime && i != (*processList).size()){
            (*arrivedProcesses).push_back((*processList)[i]);
            i++;
        }
    }

    (*processList).erase((*processList).begin(), (*processList).begin()+i);
    std::sort((*arrivedProcesses).begin(), (*arrivedProcesses).end(), compareProcessArrivedList);
}

void updateProcessTime(std::vector<Process> *executionList, int *lastExecutedTime){
    int execIter = (*executionList).size()-1;

    if ((*executionList)[execIter-1].endExecution < (*executionList)[execIter].tempoDeChegada) {
        (*executionList)[execIter].startExecution = (*executionList)[execIter].tempoDeChegada;
        (*executionList)[execIter].endExecution = (*executionList)[execIter].startExecution + (*executionList)[execIter].tempoDeExecucao;
    } else {
        (*executionList)[execIter].startExecution = (*executionList)[execIter-1].endExecution;
        (*executionList)[execIter].endExecution = (*executionList)[execIter].startExecution+(*executionList)[execIter].tempoDeExecucao;
    }

    *lastExecutedTime = (*executionList)[execIter].endExecution;
}

void SJF::calcTimes(){
    for(int i = 0; i < executionList.size(); i++) {
        executionList[i].retorno = executionList[i].endExecution - executionList[i].tempoDeChegada;
        executionList[i].resposta = executionList[i].startExecution - executionList[i].tempoDeChegada;
        executionList[i].espera = executionList[i].startExecution - executionList[i].tempoDeChegada;

        retornoMedio += executionList[i].retorno;
        respostaMedia += executionList[i].resposta;
        esperaMedia += executionList[i].espera;
    }

    retornoMedio = (float) retornoMedio/executionList.size();
    respostaMedia = (float) respostaMedia/executionList.size();
    esperaMedia = (float) esperaMedia/executionList.size();
}

void SJF::printExitSJF(){
    std::cout << "SJF " << this->retornoMedio << " " << this->respostaMedia << " " << this->esperaMedia << std::endl;
}

bool compareProcessSJF(Process p1, Process p2){
    if (p1.tempoDeChegada == p2.tempoDeChegada){
        return p1.tempoDeExecucao < p2.tempoDeExecucao;
    } else {
        return p1.tempoDeChegada < p2.tempoDeChegada;
    }
}

bool compareProcessArrivedList(Process p1, Process p2){
    return p1.tempoDeExecucao < p2.tempoDeExecucao;
}