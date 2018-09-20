#include "process.h"
#include "fcfs.h"
#include "sjf.h"
#include "util.h"

int main(int argc, char const *argv[]) {

    
    if (argc < 2) {
        std::cout << "Faltando Parâmetros. \n ./[executavel] [instancia]" << std::endl;
    } 
    else {
        std::vector<Process> process;
        process = readInstance(argv[1]);
        
        // FCFS fcfs(process);
        // fcfs.calcTimes();
        // fcfs.printExitFCFS();

        SJF sjf(process);
        sjf.calcTimes();
        sjf.printExitSJF();
    }
    
    
    return 0;
}