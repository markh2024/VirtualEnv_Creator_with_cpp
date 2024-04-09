#include "virtual_env.h"

int main() {
    const std::string filePath = "pyVnvEnv.paths";
    VirtualEnv virtualEnv(filePath);
    char choice;
    do {
        virtualEnv.clearScreen();
        virtualEnv.displayMainMenu();
        std::cin >> choice;
        switch (choice) {
            case '1':
                virtualEnv.setupVirtualEnv();
                break;
            case '2':
                virtualEnv.createVirtualEnv();
                break;
            case '3':
                virtualEnv.activateVirtualEnv();
                break;
            case '4':
                return 0;
            default:
                std::cout << "Invalid choice. Please enter a number between 1 and 5." << std::endl;
        }
    } while (true);
    return 0;
}
