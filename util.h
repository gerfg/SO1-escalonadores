#ifndef UTIL_H
#define UTIL_H

#include <vector>
#include <fstream>
#include "process.h"

std::vector<Process> readInstance(std::string file);

void showProcesses(std::vector<Process> prc, std::string name);

#endif