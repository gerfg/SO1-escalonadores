#ifndef PROCESS_H
#define PROCESS_H

#include <iostream>
#include <string>
#include <vector>
#include <fstream>

class Process {
public:
        int tempoDeChegada, tempoDeExecucao;
        const int id;
        
        float retorno, espera, reposta;

        static int idCounter;

        Process(int chegada, int execucao);
        ~Process();

        std::string printInfos();
        std::string printProcess();
};

std::vector<Process> readInstance(std::string file);

#endif
