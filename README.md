# VirtualEnv_Creator_with_cpp
## MD Harrington London Kent UK Date 09-04-2024

The general idea was to make  creating virtual environments for python3 coding  dead simple so that  you dont break installations
Its target is  for Debian Linux  systems  (Bookworm)  Version 12 

This allows  you to use pip3 to install packages as you used to be able to do 

## virtual_env.h

This header file defines a class named VirtualEnv, which encapsulates functionality related to setting up and managing a virtual environment. Here's a breakdown of the class members:

    Constructor: Initializes the filePath member variable.
    Public member functions:
        launchTerminal: Executes a terminal command asynchronously.
        displayNumberedPaths: Displays numbered paths from a file and allows the user to choose one.
        clearScreen: Clears the terminal screen.
        displayMainMenu: Displays the main menu options.
        displaySetupSubMenu: Displays the setup submenu options.
        createEmptyFile: Creates an empty file at the specified path.
        setupVirtualEnv: Implements the setup of the virtual environment, allowing users to display paths, add new paths, or exit.
        createVirtualEnv: Creates a virtual environment using the specified path.
        activateVirtualEnv: Activates the virtual environment and launches a new terminal window.

## virtual_env.cpp

This file contains the implementation of the VirtualEnv class member functions. It includes the necessary headers and defines the functions based on the declarations in the header file. The functions perform various tasks such as displaying menus, handling user input, interacting with files, executing terminal commands, and managing the virtual environment.


## main.cpp

This code represents the main function of a program that interacts with a virtual environment setup, created, and activated using the VirtualEnv class defined in virtual_env.h and implemented in virtual_env.cpp. Here's a breakdown of what the code does:

    Include virtual_env.h: This line includes the header file that defines the VirtualEnv class and its member functions.

    Main Function: The program's entry point is the main function.

    Initialization:
        It initializes a constant std::string variable named filePath with the value "pyVnvEnv.paths". This variable represents the file path where the paths related to the virtual environment setup are stored.
        It creates an instance of the VirtualEnv class named virtualEnv, passing the filePath to its constructor.

    Main Loop (do-while):
        The program enters a loop that continues indefinitely (while (true)), prompting the user to select options from the main menu until the user chooses to exit.
        Inside the loop:
            It clears the screen using the clearScreen member function of the virtualEnv object.
            It displays the main menu options using the displayMainMenu member function of the virtualEnv object.
            It reads the user's choice (a character) from the standard input (std::cin >> choice).
            It performs different actions based on the user's choice:
                If the choice is '1', it calls the setupVirtualEnv member function of the virtualEnv object to set up the virtual environment.
                If the choice is '2', it calls the createVirtualEnv member function of the virtualEnv object to create the virtual environment.
                If the choice is '3', it calls the activateVirtualEnv member function of the virtualEnv object to activate the virtual environment.
                If the choice is '4', it exits the program by returning 0.
                If the choice is anything else, it displays an error message indicating an invalid choice.

    Return: After the loop exits, the main function returns 0, indicating successful execution of the program.

In summary, this code represents a simple command-line interface program that allows users to interact with a virtual environment by choosing options from a menu. The actual implementation of the virtual environment setup, creation, and activation is handled by the VirtualEnv class.

Overall, the VirtualEnv class provides a structured approach to managing virtual environments in a Python3 environment, including setup, creation, and activation.


## CMakeLists.txt 

 CMakeLists.txt file  is used for building the project named "VirtualEnv." Here's what each part of the code does:

    cmake_minimum_required(VERSION 3.0): Specifies the minimum version of CMake required to build the project. In this case, version 3.0 or higher is required.

    project(VirtualEnv VERSION 1.0): Sets the project name to "VirtualEnv" and specifies its version as 1.0.

    file(GLOB SRC_FILES "src/*.cpp"): Uses the file command with the GLOB option to find all the .cpp files in the src directory and stores them in the variable SRC_FILES.

    include_directories(header_files): Adds the header_files directory to the list of directories to be searched for header files during compilation.

    set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build): Sets the build directory to a subdirectory named "build" within the source directory.

    set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}): Sets the directory where the executable files will be placed after they are built. In this case, it's set to the build directory.

    add_executable(${PROJECT_NAME} ${SRC_FILES}): Creates an executable target with the name specified by ${PROJECT_NAME} (which is "VirtualEnv" in this case) and includes all the source files listed in the SRC_FILES variable.

    set(CMAKE_CXX_STANDARD 17): Sets the C++ standard to C++17. This means that the compiler will use the C++17 standard when compiling the code.

    set(CMAKE_CXX_STANDARD_REQUIRED ON): Specifies that the C++ standard chosen (in this case, C++17) is required. If the compiler does not support C++17, it will generate an error.

Overall, this CMakeLists.txt file specifies how to build the project, including which source files to compile, where to find header files, and what C++ standard to use.

## To Build

Download the rep and extract
Then CD into 
