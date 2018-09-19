#include "fcfs.h"

FCFS::FCFS(std::vector<Process> processList){
    respostaMedia = 0;
    retornoMedio = 0;
    esperaMedia = 0;

    std::sort(processList.begin(), processList.end(), compareProcessFCFS);
    executionList = processList;
    
    executionList[0].startExecution = 0;
    executionList[0].endExecution = executionList[0].tempoDeExecucao;
    
    for(int i = 1; i < executionList.size(); i++) {
        if (executionList[i-1].endExecution < executionList[i].tempoDeChegada) {
            executionList[i].startExecution = executionList[i].tempoDeChegada;
            executionList[i].endExecution = executionList[i].startExecution + executionList[i].tempoDeExecucao;
        } else {
            executionList[i].startExecution = executionList[i-1].endExecution;
            executionList[i].endExecution = executionList[i].startExecution+executionList[i].tempoDeExecucao;
        }
    }

    for(int i = 0; i < executionList.size(); i++) {
        std::cout << executionList[i].printProcess() << '\n';
    }
    std::cout << std::endl;
}

void FCFS::calcTimes(){

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

bool compareProcessFCFS(Process p1, Process p2) {
    return p1.tempoDeChegada < p2.tempoDeChegada;
}

void FCFS::printExitFCFS(){
    std::cout << "FCFS " << this->retornoMedio << " " << this->respostaMedia << " " << this->esperaMedia << std::endl;
}