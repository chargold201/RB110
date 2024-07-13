# [Understand the] Problem
  # Problem: Write a method that takes two strings as arguments, 
  # determines the longest of the two strings, and then returns the 
  # result of concatenating the shorter string, the longer string, 
  # and the shorter string once again. You may assume that the strings 
  # are of different lengths.
  # Input: two strings of different lengths
  # Output: one new string
  # Rules:
    # Explicit:
    # Implicit:

# Examples/Test Cases
  # short_long_short('abc', 'defgh') == "abcdefghabc"
  # short_long_short('abcde', 'fgh') == "fghabcdefgh"
  # short_long_short('', 'xyz') == "xyz"

# Data Structure

# Algorithm

# Code


def short_long_short(str1, str2)
  if str1.length == str2.length
    puts "Please make sure the strings are of different lengths"
  elsif str1.length < str2.length
    short = str1
    long = str2
  else
    short = str2
    long = str1
  end

  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
