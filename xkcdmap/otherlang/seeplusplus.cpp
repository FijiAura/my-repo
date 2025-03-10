```cpp
#include <iostream>
#include <string>
#include <algorithm>

// Function prototypes
void start_quiz();
bool ottoman_empire_exists();
bool soviet_union_exists();
void texas_question();
void west_africa_blob();
void saudi_arabia();
void us_territory_of_alaska();
void vietnam_question();
void independent_canada();
void south_africa();
void austria_hungary();
void rhodesia();
void is_jan_mayen_part_of_norway();
void saint_helena_island();
void north_korea();
void serbia_montenegro();

std::string get_input(const std::string& prompt) {
    std::string input;
    std::cout << prompt;
    std::getline(std::cin, input);
    input.erase(std::remove_if(input.begin(), input.end(), ::isspace), input.end());
    std::transform(input.begin(), input.end(), input.begin(), ::toupper);
    return input;
}

void start_quiz() {
    std::cout << "Istanbul or Constantinople?" << std::endl;
    std::cout << "A: Constantinople" << std::endl;
    std::cout << "B: Istanbul" << std::endl;
    std::string answer = get_input("Answer: ");

    if (answer == "A") {
        if (ottoman_empire_exists()) {
            return;
        }
        saudi_arabia();
    } else if (answer == "B") {
        if (soviet_union_exists()) {
            return;
        }
        west_africa_blob();
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
        return;
    }
}

bool ottoman_empire_exists() {
    std::cout << "Does the Ottoman Empire exist?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1805 or earlier" << std::endl;
        return true;
    } else if (answer == "n") {
        texas_question();
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
        return false;
    }
    return false;
}

bool soviet_union_exists() {
    std::cout << "Does the Soviet Union exist?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1922-1991" << std::endl;
        return true;
    } else if (answer == "n") {
        west_africa_blob();
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
        return false;
    }
    return false;
}

void texas_question() {
    std::cout << "Texas is:" << std::endl;
    std::cout << "A: Part of Mexico" << std::endl;
    std::cout << "B: Independent" << std::endl;
    std::cout << "C: Part of the USA" << std::endl;
    std::string answer = get_input("Answer: ");
    if (answer == "A") {
        std::cout << "1821-1836" << std::endl;
    } else if (answer == "B") {
        std::cout << "1836-1845" << std::endl;
    } else if (answer == "C") {
        std::cout << "1845 or later" << std::endl;
        us_territory_of_alaska();
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void west_africa_blob() {
    std::cout << "Is most of West Africa a giant French blob?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1910 or earlier" << std::endl;
    } else if (answer == "n") {
        std::cout << "1960 or later" << std::endl;
        vietnam_question();
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void saudi_arabia() {
    std::cout << "Saudi Arabia?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1932 or later" << std::endl;
    } else if (answer == "n") {
        ottoman_empire_exists();
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void us_territory_of_alaska() {
    std::cout << "US Territory of Alaska?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1867-1959" << std::endl;
    } else if (answer == "n") {
        std::cout << "1959 or later" << std::endl;
        independent_canada();
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void vietnam_question() {
    std::cout << "How many Vietnams are there?" << std::endl;
    std::cout << "A: 0" << std::endl;
    std::cout << "B: 1" << std::endl;
    std::cout << "C: 2" << std::endl;
    std::string answer = get_input("Answer: ");
    if (answer == "A") {
        std::cout << "1976 or later" << std::endl;
    } else if (answer == "B") {
        std::cout << "1954-1976" << std::endl;
    } else if (answer == "C") {
        std::cout << "Before 1954" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void independent_canada() {
    std::cout << "Independent Canada?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1867 or later" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1867" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void south_africa() {
    std::cout << "South Africa?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1910 or later" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1910" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void austria_hungary() {
    std::cout << "Austria-Hungary?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1867-1918" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1867 or after 1918" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void rhodesia() {
    std::cout << "Rhodesia?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1965-1980" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1965 or after 1980" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void is_jan_mayen_part_of_norway() {
    std::cout << "Is Jan Mayen part of the Kingdom of Norway?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1929 or later" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1929" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void saint_helena_island() {
    std::cout << "Saint Helena Island?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1815 or later" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1815" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void north_korea() {
    std::cout << "North Korea?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1948 or later" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1948" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

void serbia_montenegro() {
    std::cout << "Serbia/Montenegro?" << std::endl;
    std::string answer = get_input("y/n: ");
    std::transform(answer.begin(), answer.end(), answer.begin(), ::tolower);
    if (answer == "y") {
        std::cout << "1992-2006" << std::endl;
    } else if (answer == "n") {
        std::cout << "Before 1992 or after 2006" << std::endl;
    } else {
        std::cout << "Invalid input. Please restart the quiz." << std::endl;
    }
}

int main() {
    start_quiz();
    return 0;
}
```
