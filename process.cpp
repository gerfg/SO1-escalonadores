#include "process.h"

int Process::idCounter = 1;

Process::Process(int chegada, int execucao) : 
tempoDeChegada{chegada}, 
tempoDeExecucao{execucao}, 
id{idCounter++}, 
retorno{0}, 
espera{0}, 
resposta{0},
startExecution{0},
endExecution{0}
{}

Process::Process(){}

Process::~Process(){}

std::string Process::printInfos() {
    return std::to_string(id) + " " + std::to_string(this->retorno) + " " + std::to_string(this->resposta) + " " + std::to_string(this->espera);
}

std::string Process::printProcess(){
    return "Id: " + std::to_string(this->id) + " Chegada: " + std::to_string(this->tempoDeChegada) + " Execucao: " + std::to_string(this->tempoDeExecucao) + " [" + std::to_string(this->startExecution) + " , " + std::to_string(this->endExecution) + "]";
}

bool comparePrcs(Process x, Process y){
    return x.tempoDeChegada < y.tempoDeChegada;
}