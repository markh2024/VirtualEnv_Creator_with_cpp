#include "virtual_env.h"



namespace fs = std::filesystem;

VirtualEnv::VirtualEnv(const std::string& filePath) : filePath(filePath) {}

void VirtualEnv::launchTerminal(const std::string& command) {
    system(command.c_str());
}

void VirtualEnv::displayNumberedPaths() {
    std::ifstream file(filePath);
    if (!file.good()) {
        std::cout << "File does not exist." << std::endl;
        createEmptyFile(filePath);
    } else {
        std::string line;
        int lineNum = 1;
        std::vector<std::string> paths; // Store paths for selection
        std::cout << "Available paths:" << std::endl;
        while (std::getline(file, line)) {
            paths.push_back(line);
            std::cout << lineNum++ << ": " << line << std::endl;
        }
        file.close();
        if (!paths.empty()) {
            std::cout << "Enter the number corresponding to the path you want to choose: ";
            int choice;
            std::cin >> choice;
            if (choice > 0 && choice <= static_cast<int>(paths.size())) {
                venvPath = paths[choice - 1];
                std::cout << "Selected path: " << venvPath << std::endl;
            } else {
                std::cout << "Invalid choice." << std::endl;
            }
        } else {
            std::cout << "No paths available." << std::endl;
        }
    }
}

void VirtualEnv::clearScreen() {
    std::cout << "\033[2J\033[1;1H";
}

void VirtualEnv::displayMainMenu() {
    std::cout << "Create Python3 Virtual Environment MD Harrington 09-04-2024 Kent London UK " << std::endl << std::endl;
    std::cout << "1: Set up virtual environment" << std::endl;
    std::cout << "2: Create virtual environment" << std::endl;
    std::cout << "3: Activate virtual environment" << std::endl;
    std::cout << "4: Exit Menu" << std::endl << std::endl;
    std::cout << "Enter your choice: ";
}

void VirtualEnv::displaySetupSubMenu() {
    std::cout << "Set up Virtual Environment" << std::endl << std::endl;
    std::cout << "(a) Display current paths" << std::endl;
    std::cout << "(b) Enter new path" << std::endl;
    std::cout << "(c) Exit to Main menu" << std::endl << std::endl;
    std::cout << "Enter your choice: ";
}

void VirtualEnv::createEmptyFile(const std::string& filePath) {
    std::ofstream file(filePath);
    if (!file) {
        std::cout << "Error: Unable to create file." << std::endl;
    } else {
        std::cout << "Empty file created." << std::endl;
        file.close();
    }
}

void VirtualEnv::setupVirtualEnv() {
    char submenuOption;
    do {
        clearScreen();
        std::cout << "Set up Virtual Environment" << std::endl << std::endl;
        std::cout << "(a) Display current paths" << std::endl;
        std::cout << "(b) Enter new path" << std::endl;
        std::cout << "(c) Exit to Main menu" << std::endl << std::endl;
        std::cout << "Enter your choice: ";
        std::cin >> submenuOption;
        switch (submenuOption) {
            case 'a': {
                clearScreen();
                displayNumberedPaths();
                std::cout << "Press any key to continue...";
                std::cin.ignore();
                std::cin.get();
                break;
            }
            case 'b': {
                clearScreen();
                std::cout << "Enter new path: ";
                std::cin >> venvPath;
                std::ofstream file(filePath, std::ios::app);
                if (file.is_open()) {
                    file << venvPath << std::endl;
                    file.close();
                    std::cout << "New path added." << std::endl;
                } else {
                    std::cout << "Error: Unable to open file." << std::endl;
                }
                std::cout << "Press any key to continue...";
                std::cin.ignore();
                std::cin.get();
                break;
            }
            case 'c':
                return;
            default:
                std::cout << "Invalid choice. Please enter a, b, or c." << std::endl;
                std::cout << "Press any key to continue...";
                std::cin.ignore();
                std::cin.get();
        }
    } while (true);
}

void VirtualEnv::createVirtualEnv() {
    clearScreen();
    std::cout << "Create virtual environment" << std::endl;
    if (!venvPath.empty()) {
        system(("python3 -m venv " + venvPath).c_str());
        std::cout << "Virtual environment created at " << venvPath << std::endl;
    } else {
        std::cout << "Please specify a path for the virtual environment." << std::endl;
    }
    std::cout << "Press any key to continue...";
    std::cin.ignore();
    std::cin.get();
}

void VirtualEnv::activateVirtualEnv() {
    clearScreen();
    std::cout << "How to Activate virtual environment" << std::endl;
    if (!venvPath.empty()) {
        std::cout << "Copy and paste the following command into a new terminal window:\n";
        std::cout << "source " << venvPath << "/bin/activate" << std::endl;
    } else {
        std::cout << "Please specify a path for the virtual environment using menu choice 1 and submenu." << std::endl;
    }
    // Instructions for deactivating the environment
    std::string deactivateInstructions = "To deactivate the environment, simply type 'deactivate' at the prompt in new terminal ";

    std::cout << deactivateInstructions << std::endl;

    // Launch a new terminal asynchronously
    std::string command = "x-terminal-emulator -e 'bash -c \"echo Copy the command  below then paste this in your new window at the prompt; ";
    command += "echo source " + venvPath + "/bin/activate; ";
    command += "read -p Press_Enter_to_Continue_After_Copying_Above_Command; exec bash\"'";

    std::thread terminalThread(&VirtualEnv::launchTerminal, this, command);
    terminalThread.detach(); // Detach the thread to let it run independently

    // Return to main menu after a short delay
    std::this_thread::sleep_for(std::chrono::seconds(8)); // Adjust the delay as needed
}
