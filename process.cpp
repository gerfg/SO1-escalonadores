#include "process.h"

int Process::idCounter = 0;

Process::Process(int chegada, int execucao) : 
tempoDeChegada{chegada}, 
tempoDeExecucao{execucao}, 
id{idCounter++}, 
retorno{0}, 
espera{0}, 
reposta{0}
{
    startExecution = 0;
}

Process::~Process(){}

std::string Process::printInfos() {
    return std::to_string(this->retorno) + " " + std::to_string(this->reposta) + " " + std::to_string(this->espera);
}

std::string Process::printProcess(){
    return "Id: " + std::to_string(this->id) + " Chegada: " + std::to_string(this->tempoDeChegada) + " Execucao: " + std::to_string(this->tempoDeExecucao) + " StartExecution: " + std::to_string(this->startExecution);
}


std::vector<Process> readInstance(std::string file) {

    std::vector<Process> prcs;

    std::fstream read (file, std::fstream::in | std::fstream::out);

    int chegada, execucao, count=0;

    while(true){
        read >> chegada;
        read >> execucao;
        if( read.eof() ) break;
        prcs.push_back(Process(chegada,execucao));
    }

    read.close();    

    return prcs;
}