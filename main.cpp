#include "process.h"
#include "fcfs.h"
#include "util.h"

int main() {
    std::vector<Process> process;
    process = readInstance("../instances/inst01");
    
    // for(int i = 0; i < process.size(); i++)
    // {
    //     std::cout << process[i].printProcess() << '\n';
    // }
    
    FCFS fcfs(process);

    return 0;
}