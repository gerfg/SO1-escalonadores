#ifndef FCFS_H
#define FCFS_H

#include <vector>
#include <algorithm>
#include "process.h"

class FCFS {
public:
    std::vector<Process> executionList;

    FCFS(std::vector<Process> processList);
};

bool compareProcessFCFS(Process const & p1, Process const & p2);

#endif