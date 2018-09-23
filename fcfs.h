#ifndef FCFS_H
#define FCFS_H

#include <vector>
#include <algorithm>
#include "process.h"

class FCFS {
public:
    std::vector<Process> executionList;

    float retornoMedio, respostaMedia, esperaMedia;

    FCFS(std::vector<Process> processList);
    void calcTimes(int processesCount);

    void printExitFCFS();
};

void createExecutionListFCFS(std::vector<Process> *executionList, std::vector<Process> *processList);
bool compareProcessFCFS(Process p1, Process p2);

#endif