#ifndef VIRTUAL_ENV_H
#define VIRTUAL_ENV_H

#include <string>
#include <vector>
#include <thread>
#include <iostream>
#include <unistd.h>
#include <stdio.h>
#include <cstdio>
#include <string>
#include <thread> // for std::thread
#include <chrono> // for std::this_thread
#include <filesystem> // for std::filesystem
#include <fstream>
#include <vector>
#include <cstdlib>


class VirtualEnv {
public:
    VirtualEnv(const std::string& filePath);

    void launchTerminal(const std::string& command);
    void displayNumberedPaths();
    void clearScreen();
    void displayMainMenu();
    void displaySetupSubMenu();
    void createEmptyFile(const std::string& filePath);
    void setupVirtualEnv();
    void createVirtualEnv();
    void activateVirtualEnv();

private:
    std::string filePath;
    std::string venvPath;
};

#endif // VIRTUAL_ENV_H
