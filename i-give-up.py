def do_any_exist():
    print("Do any of these exist?")
    print("Independent canada")
    print("US Territory of Alaska")
    print("Tokyo")
    answer=(input("y/n: "))
    if answer == "y":
         print("1805 or earlier")
    if answer == "n":
         print("Texas Is: ")

def west_africa_blob():
     answer=(input("Is most of french africa a giant french blob? y/n: "))
     if answer

def start_quiz():
    print("Istanbul or Constantinople")
    print("A: Istanbul")
    print("B: Constantipole")
    print("C: Neither")
    answer=((input("Answer: ")))
    if answer == "A":
            answer=(input("Does the Soviet Union exist? y/n: "))
            
    if answer == "B":
        do_any_exist()
    
    if answer == "C":
        answer=(input("Does the Ottoman Empire Exist? y/n: "))
        if answer == "y":
             do_any_exist()


print("For yes or no questions, input 'y' for yes, and 'n' for no.")
print("For multiple choice questions, input the letter of the question.")
start_quiz()