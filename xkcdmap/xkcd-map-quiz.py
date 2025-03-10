def start_quiz():
    print("Istanbul or Constantinople?")
    print("A: Constantinople")
    print("B: Istanbul")
    answer = input("Answer: ").strip().upper()

    if answer == "A":
        if ottoman_empire_exists():
            return
        saudi_arabia()
    elif answer == "B":
        if soviet_union_exists():
            return
        west_africa_blob()
    else:
        print("Invalid input. Please restart the quiz.")
        return

def ottoman_empire_exists():
    print("Does the Ottoman Empire exist?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1805 or earlier")
        return True
    elif answer == "n":
        texas_question()
    else:
        print("Invalid input. Please restart the quiz.")
        return False

def soviet_union_exists():
    print("Does the Soviet Union exist?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1922-1991")
        return True
    elif answer == "n":
        west_africa_blob()
    else:
        print("Invalid input. Please restart the quiz.")
        return False

def texas_question():
    print("Texas is:")
    print("A: Part of Mexico")
    print("B: Independent")
    print("C: Part of the USA")
    answer = input("Answer: ").strip().upper()
    if answer == "A":
        print("1821-1836")
    elif answer == "B":
        print("1836-1845")
    elif answer == "C":
        print("1845 or later")
        us_territory_of_alaska()
    else:
        print("Invalid input. Please restart the quiz.")

def west_africa_blob():
    print("Is most of West Africa a giant French blob?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1910 or earlier")
    elif answer == "n":
        print("1960 or later")
        vietnam_question()
    else:
        print("Invalid input. Please restart the quiz.")

def saudi_arabia():
    print("Saudi Arabia?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1932 or later")
    elif answer == "n":
        ottoman_empire_exists()
    else:
        print("Invalid input. Please restart the quiz.")

def us_territory_of_alaska():
    print("US Territory of Alaska?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1867-1959")
    elif answer == "n":
        print("1959 or later")
        independent_canada()
    else:
        print("Invalid input. Please restart the quiz.")

def vietnam_question():
    print("How many Vietnams are there?")
    print("A: 0")
    print("B: 1")
    print("C: 2")
    answer = input("Answer: ").strip().upper()
    if answer == "A":
        print("1976 or later")
    elif answer == "B":
        print("1954-1976")
    elif answer == "C":
        print("Before 1954")
    else:
        print("Invalid input. Please restart the quiz.")

def independent_canada():
    print("Independent Canada?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1867 or later")
    elif answer == "n":
        print("Before 1867")
    else:
        print("Invalid input. Please restart the quiz.")

def south_africa():
    print("South Africa?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1910 or later")
    elif answer == "n":
        print("Before 1910")
    else:
        print("Invalid input. Please restart the quiz.")

def austria_hungary():
    print("Austria-Hungary?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1867-1918")
    elif answer == "n":
        print("Before 1867 or after 1918")
    else:
        print("Invalid input. Please restart the quiz.")

def rhodesia():
    print("Rhodesia?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1965-1980")
    elif answer == "n":
        print("Before 1965 or after 1980")
    else:
        print("Invalid input. Please restart the quiz.")

def is_jan_mayen_part_of_norway():
    print("Is Jan Mayen part of the Kingdom of Norway?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1929 or later")
    elif answer == "n":
        print("Before 1929")
    else:
        print("Invalid input. Please restart the quiz.")

def saint_helena_island():
    print("Saint Helena Island?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1815 or later")
    elif answer == "n":
        print("Before 1815")
    else:
        print("Invalid input. Please restart the quiz.")

def north_korea():
    print("North Korea?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1948 or later")
    elif answer == "n":
        print("Before 1948")
    else:
        print("Invalid input. Please restart the quiz.")

def serbia_montenegro():
    print("Serbia/Montenegro?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1992-2006")
    elif answer == "n":
        print("Before 1992 or after 2006")
    else:
        print("Invalid input. Please restart the quiz.")

def east_timor():
    print("East Timor?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("2002 or later")
    elif answer == "n":
        print("Before 2002")
    else:
        print("Invalid input. Please restart the quiz.")

def sudan():
    print("How many Sudans are there?")
    print("A: 1")
    print("B: 2")
    answer = input("Answer: ").strip().upper()
    if answer == "A":
        print("Before 2011")
    elif answer == "B":
        print("2011 or later")
    else:
        print("Invalid input. Please restart the quiz.")

def crimea_disputed():
    print("Is Crimea disputed?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("2014 or later")
    elif answer == "n":
        print("Before 2014")
    else:
        print("Invalid input. Please restart the quiz.")

def learning_spiders():
    print("Does the learning mention the spiders?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("2000 or later")
    elif answer == "n":
        print("Before 2000")
    else:
        print("Invalid input. Please restart the quiz.")

def sinai_part_of_egypt():
    print("Is the Sinai part of Egypt?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1982 or later")
    elif answer == "n":
        print("Before 1982")
    else:
        print("Invalid input. Please restart the quiz.")

def capital_of_micronesia():
    print("What's the capital of Micronesia?")
    answer = input("Answer: ").strip().upper()
    if answer == "PALIKIR":
        print("1989 or later")
    else:
        print("Before 1989")

def holy_roman_empire():
    print("The Holy Roman Empire?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1805 or earlier")
    elif answer == "n":
        print("1806 or later")
        south_africa()
    else:
        print("Invalid input. Please restart the quiz.")

def united_states():
    print("The United States?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1781 or later")
    elif answer == "n":
        print("Before 1781")
        rhodesia()
    else:
        print("Invalid input. Please restart the quiz.")

def pakistan():
    print("Pakistan?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1947 or later")
    elif answer == "n":
        print("Before 1947")
        is_jan_mayen_part_of_norway()
    else:
        print("Invalid input. Please restart the quiz.")

def bangladesh():
    print("Bangladesh?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1971 or later")
    elif answer == "n":
        print("Before 1971")
        saint_helena_island()
    else:
        print("Invalid input. Please restart the quiz.")

def cambodia():
    print("Cambodia?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1953 or later")
    elif answer == "n":
        print("Before 1953")
        north_korea()
    else:
        print("Invalid input. Please restart the quiz.")

def ertrea():
    print("Eritrea?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1993 or later")
    elif answer == "n":
        print("Before 1993")
        serbia_montenegro()
    else:
        print("Invalid input. Please restart the quiz.")

def united_arab_republic():
    print("The United Arab Republic?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1958-1961")
    elif answer == "n":
        print("Before 1958 or after 1961")
        east_timor()
    else:
        print("Invalid input. Please restart the quiz.")

def jimmy_carter():
    print("Jimmy Carter is:")
    print("A: President")
    print("B: Ex-President")
    print("C: Not President")
    answer = input("Answer: ").strip().upper()
    if answer == "A":
        print("1977-1981")
    elif answer == "B":
        print("1981 or later")
        sudan()
    elif answer == "C":
        print("Before 1977")
        crimea_disputed()
    else:
        print("Invalid input. Please restart the quiz.")

def republic_of_upper_volta():
    print("Republic of the Upper Volta or Burkina Faso?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1958-1984")
    elif answer == "n":
        print("Before 1958 or after 1984")
        learning_spiders()
    else:
        print("Invalid input. Please restart the quiz.")

def sri_lanka():
    print("Sri Lanka?")
    answer = input("y/n: ").strip().lower()
    if answer == "y":
        print("1972 or later")
    elif answer == "n":
        print("Before 1972")
        sinai_part_of_egypt()
    else:
        print("Invalid input. Please restart the quiz.")

def capital_of_micronesia_final():
    print("What's the capital of Micronesia?")
    answer = input("Answer: ").strip().upper()
    if answer == "PALIKIR":
        print("1989 or later")
    else:
        print("Before 1989")

print("For yes or no questions, input 'y' for yes, and 'n' for no.")
print("For multiple choice questions, input the letter of the question.")
start_quiz()
