#include "fcfs.h"

FCFS::FCFS(std::vector<Process> processList){
    respostaMedia = 0;
    retornoMedio = 0;
    esperaMedia = 0;
    
    // ordenacao dos processos por ordem de chegada
    std::sort(processList.begin(), processList.end(), compareProcessFCFS);
    
    // primeiro elemento adicionado e seus respectivos tempos atualizados
    executionList.push_back(processList[0]);
    processList.erase(processList.begin());
    
    executionList[0].startExecution = executionList[0].tempoDeChegada;
    executionList[0].endExecution = executionList[0].tempoDeChegada + executionList[0].tempoDeExecucao;

    createExecutionListFCFS(&executionList, &processList);
}

void createExecutionListFCFS(std::vector<Process> *executionList, std::vector<Process> *processList) {
    int iterator;
    while((*processList).size() != 0){  
        (*executionList).push_back((*processList)[0]);
        (*processList).erase((*processList).begin());
        
        iterator = (*executionList).size()-1;
        if ((*executionList)[iterator-1].endExecution < (*executionList)[iterator].tempoDeChegada) {
            (*executionList)[iterator].startExecution = (*executionList)[iterator].tempoDeChegada;
            (*executionList)[iterator].endExecution = (*executionList)[iterator].startExecution + (*executionList)[iterator].tempoDeExecucao;
        } else {
            (*executionList)[iterator].startExecution = (*executionList)[iterator-1].endExecution;
            (*executionList)[iterator].endExecution = (*executionList)[iterator].startExecution+(*executionList)[iterator].tempoDeExecucao;
        }
    }
}

void FCFS::calcTimes(int processesCount){
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

bool compareProcessFCFS(Process p1, Process p2) {
    return p1.tempoDeChegada < p2.tempoDeChegada;
}

void FCFS::printExitFCFS(){
    std::cout << "FCFS " << this->retornoMedio << " " << this->respostaMedia << " " << this->esperaMedia << std::endl;
}