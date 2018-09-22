#include "sjf.h"

SJF::SJF(std::vector<Process> processList){
    respostaMedia = 0;
    retornoMedio = 0;
    esperaMedia = 0;

    // Lista de processos que chegaram
    std::vector<Process> arrivedProcesses;
    
    // primeira ordenacao para adicionar o primeiro elemento na lista de execucao
    std::sort(processList.begin(), processList.end(), compareProcessSJF);
    
    /*
        primeiro elemento adicionado para usar como referencia
        nos proximos
    */
    executionList.push_back(processList[0]);
    processList.erase(processList.begin());
    
    executionList[0].startExecution = executionList[0].tempoDeChegada;
    executionList[0].endExecution = executionList[0].startExecution + executionList[0].tempoDeExecucao;

    int i, lastExecutedTime = executionList[0].endExecution, execIter;
    while(processList.size() != 0 || arrivedProcesses.size() != 0){

        i = 0;
        while(processList[i].tempoDeChegada <= lastExecutedTime && i != processList.size()){
            arrivedProcesses.push_back(processList[i]);
            i++;
        }
        processList.erase(processList.begin(), processList.begin()+i);

        std::sort(arrivedProcesses.begin(), arrivedProcesses.end(), compareProcessArrivedList);

        executionList.push_back(arrivedProcesses[0]);
        arrivedProcesses.erase(arrivedProcesses.begin());
        
        execIter = executionList.size()-1;

        if (executionList[execIter-1].endExecution < executionList[execIter].tempoDeChegada) {
            executionList[execIter].startExecution = executionList[execIter].tempoDeChegada;
            executionList[execIter].endExecution = executionList[execIter].startExecution + executionList[execIter].tempoDeExecucao;
        } else {
            executionList[execIter].startExecution = executionList[execIter-1].endExecution;
            executionList[execIter].endExecution = executionList[execIter].startExecution+executionList[execIter].tempoDeExecucao;
        }
        
        lastExecutedTime = executionList[execIter].endExecution;
    }
    
    showProcessList(processList, "ProcessList:");
    showProcessList(executionList, "ExecutionList");
    showProcessList(arrivedProcesses, "ArrivedProcesses");
}

void SJF::calcTimes(){
    for(int i = 0; i < executionList.size(); i++) {
        executionList[i].retorno = executionList[i].endExecution - executionList[i].startExecution;
        executionList[i].resposta = executionList[i].startExecution - executionList[i].tempoDeChegada;
        executionList[i].espera = executionList[i].startExecution - executionList[i].tempoDeChegada;
    }

    for(int i = 0; i < executionList.size(); i++) {
        std::cout << executionList[i].printInfos() << '\n';
    }
    
    for(int i = 0; i < executionList.size(); i++) {
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