# [Understand the] Problem
  # Problem:
    # Write a method that takes a year as input and returns the century. 
    # The return value should be a string that begins with the century number, 
    # and ends with st, nd, rd, or th as appropriate for that number.
    # New centuries begin in years that end with 01. So, the years 1901-2000 
    # comprise the 20th century.
  # Input: One positive integer
  # Output: One string
  # Rules:
    # Explicit:
      # The resulting string must begin with the century number, and end
      # with st, nd, rd, or th
    # Implicit:
      # The year is a positive integer

# Examples/Test Cases
  # century(2000) == '20th'
  # century(2001) == '21st'
  # century(1965) == '20th'
  # century(256) == '3rd'
  # century(5) == '1st'
  # century(10103) == '102nd'
  # century(1052) == '11th'
  # century(1127) == '12th'
  # century(11201) == '113th'

# Data Structure
  # Array

# Algorithm
  # If last digit is 0, 4, 5, 6, 7, 8, or 9, ending will be th.
  # If 1, st; if 2, nd; if 3, rd.
  # To find century, cut the last 2 digits.

# Code

def century(year)
  century = (year / 100) + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
