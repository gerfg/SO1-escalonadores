#include "sjf.h"

SJF::SJF(std::vector<Process> processList){
    respostaMedia = 0;
    retornoMedio = 0;
    esperaMedia = 0;

    executionList = processList;
    std::sort(executionList.begin(), executionList.end(), compareProcessSJF);

    for(int i = 0; i < executionList.size(); i++) {
        std::cout << executionList[i].printProcess() << '\n';
    }
    std::cout << std::endl;
}

void SJF::calcTimes(){

}

void SJF::printExitFCFS(){

}

bool compareProcessSJF(Process p1, Process p2){
    if (p1.tempoDeChegada == p2.tempoDeChegada){
        return p1.tempoDeExecucao < p2.tempoDeExecucao;
    } else {
        return p1.tempoDeChegada < p2.tempoDeChegada;
    }
}