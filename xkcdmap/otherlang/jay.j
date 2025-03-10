NB. Define the main quiz function
start_quiz =: 3 : 0
  print 'Istanbul or Constantinople?'
  print 'A: Constantinople'
  print 'B: Istanbul'
  answer =. (1!:1) 'Answer: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'AaBb' NB. Convert to uppercase

  if. 'A' = answer do.
    if. ottoman_empire_exists do.
      return.
    end.
    saudi_arabia
  elseif. 'B' = answer do.
    if. soviet_union_exists do.
      return.
    end.
    west_africa_blob
  else.
    print 'Invalid input. Please restart the quiz.'
    return.
  end.
)

NB. Define the ottoman_empire_exists function
ottoman_empire_exists =: 3 : 0
  print 'Does the Ottoman Empire exist?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1805 or earlier'
    return. 1
  elseif. 'n' = answer do.
    texas_question
  else.
    print 'Invalid input. Please restart the quiz.'
    return. 0
  end.
)

NB. Define the soviet_union_exists function
soviet_union_exists =: 3 : 0
  print 'Does the Soviet Union exist?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1922-1991'
    return. 1
  elseif. 'n' = answer do.
    west_africa_blob
  else.
    print 'Invalid input. Please restart the quiz.'
    return. 0
  end.
)

NB. Define the texas_question function
texas_question =: 3 : 0
  print 'Texas is:'
  print 'A: Part of Mexico'
  print 'B: Independent'
  print 'C: Part of the USA'
  answer =. (1!:1) 'Answer: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'AaBbCc' NB. Convert to uppercase

  if. 'A' = answer do.
    print '1821-1836'
  elseif. 'B' = answer do.
    print '1836-1845'
  elseif. 'C' = answer do.
    print '1845 or later'
    us_territory_of_alaska
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the west_africa_blob function
west_africa_blob =: 3 : 0
  print 'Is most of West Africa a giant French blob?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1910 or earlier'
  elseif. 'n' = answer do.
    print '1960 or later'
    vietnam_question
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the saudi_arabia function
saudi_arabia =: 3 : 0
  print 'Saudi Arabia?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1932 or later'
  elseif. 'n' = answer do.
    ottoman_empire_exists
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the us_territory_of_alaska function
us_territory_of_alaska =: 3 : 0
  print 'US Territory of Alaska?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1867-1959'
  elseif. 'n' = answer do.
    print '1959 or later'
    independent_canada
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the vietnam_question function
vietnam_question =: 3 : 0
  print 'How many Vietnams are there?'
  print 'A: 0'
  print 'B: 1'
  print 'C: 2'
  answer =. (1!:1) 'Answer: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'AaBbCc' NB. Convert to uppercase

  if. 'A' = answer do.
    print '1976 or later'
  elseif. 'B' = answer do.
    print '1954-1976'
  elseif. 'C' = answer do.
    print 'Before 1954'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the independent_canada function
independent_canada =: 3 : 0
  print 'Independent Canada?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1867 or later'
  elseif. 'n' = answer do.
    print 'Before 1867'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the south_africa function
south_africa =: 3 : 0
  print 'South Africa?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1910 or later'
  elseif. 'n' = answer do.
    print 'Before 1910'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the austria_hungary function
austria_hungary =: 3 : 0
  print 'Austria-Hungary?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1867-1918'
  elseif. 'n' = answer do.
    print 'Before 1867 or after 1918'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the rhodesia function
rhodesia =: 3 : 0
  print 'Rhodesia?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1965-1980'
  elseif. 'n' = answer do.
    print 'Before 1965 or after 1980'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the is_jan_mayen_part_of_norway function
is_jan_mayen_part_of_norway =: 3 : 0
  print 'Is Jan Mayen part of the Kingdom of Norway?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1929 or later'
  elseif. 'n' = answer do.
    print 'Before 1929'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the saint_helena_island function
saint_helena_island =: 3 : 0
  print 'Saint Helena Island?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1815 or later'
  elseif. 'n' = answer do.
    print 'Before 1815'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the north_korea function
north_korea =: 3 : 0
  print 'North Korea?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1948 or later'
  elseif. 'n' = answer do.
    print 'Before 1948'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Define the serbia_montenegro function
serbia_montenegro =: 3 : 0
  print 'Serbia/Montenegro?'
  answer =. (1!:1) 'y/n: ' NB. Read input
  answer =. answer ~. ' ' NB. Strip whitespace
  answer =. answer ~. 'yn' NB. Convert to lowercase

  if. 'y' = answer do.
    print '1992-2006'
  elseif. 'n' = answer do.
    print 'Before 1992 or after 2006'
  else.
    print 'Invalid input. Please restart the quiz.'
  end.
)

NB. Start the quiz
start_quiz ''
