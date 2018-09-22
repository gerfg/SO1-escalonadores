#include "fcfs.h"

FCFS::FCFS(std::vector<Process> processList){
    respostaMedia = 0;
    retornoMedio = 0;
    esperaMedia = 0;
    
    std::sort(processList.begin(), processList.end(), compareProcessFCFS);
    
    executionList.push_back(processList[0]);
    processList.erase(processList.begin());
    
    executionList[0].startExecution = executionList[0].tempoDeChegada;
    executionList[0].endExecution = executionList[0].tempoDeChegada + executionList[0].tempoDeExecucao;

    int i;
    while(processList.size() != 0){
        executionList.push_back(processList[0]);
        processList.erase(processList.begin());
        
        i = executionList.size()-1;
        if (executionList[i-1].endExecution < executionList[i].tempoDeChegada) {
            executionList[i].startExecution = executionList[i].tempoDeChegada;
            executionList[i].endExecution = executionList[i].startExecution + executionList[i].tempoDeExecucao;
        } else {
            executionList[i].startExecution = executionList[i-1].endExecution;
            executionList[i].endExecution = executionList[i].startExecution+executionList[i].tempoDeExecucao;
        }
    }
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