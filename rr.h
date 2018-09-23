#ifndef RR_H
#define RR_H

#include "process.h"
#include "util.h"
#include <queue>
#include <vector>
#include <algorithm>

class RR{
public:
    std::vector<Process> executionList;
    int quantum, timeOfLastExecutedProcess;
    float retornoMedio, respostaMedia, esperaMedia;

    RR(std::vector<Process> processList, int quantum);
    void calcTimes(int processesCount);
};

bool compareProcessRR(Process p1, Process p2);
void getArrivedProcesses(std::vector<Process> *processList, std::queue<Process> *ready, int lastExecutedTime);
void updateLastProcessInExecutionList(std::vector<Process> *executionList, int *lastExecutedTime, int quantum, bool finished);
void createExecutionList(std::vector<Process> *executionList, std::vector<Process> *processList, int quantum);

#endif