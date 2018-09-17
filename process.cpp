#include "process.h"

int Process::idCounter = 0;

Process::Process(int chegada, int execucao) : tempoDeChegada{chegada}, tempoDeExecucao{execucao}, id{idCounter++}, retorno{0}, espera{0}, reposta{0}{}

Process::~Process(){}

std::string Process::printInfos() {
    return std::to_string(this->retorno) + " " + std::to_string(this->reposta) + " " + std::to_string(this->espera);
}

std::string Process::printProcess(){
    return std::to_string(this->id) + " " + std::to_string(this->tempoDeChegada) + " " + std::to_string(this->tempoDeExecucao);
}


std::vector<Process> readInstance(std::string file) {

    std::vector<Process> prcs;

    std::fstream fs (file, std::fstream::in | std::fstream::out);

    int chegada, execucao, count=0;

    while(true){
        fs >> chegada;
        fs >> execucao;
        if( fs.eof() ) break;
        prcs.push_back(Process(chegada,execucao));
    }

    fs.close();

    return prcs;
}