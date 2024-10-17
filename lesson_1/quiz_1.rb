# def snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     words[current_word].downcase!

#     current_word += 1
#     break if current_word >= words.size
#   end

#   words.join('_')
# end

# puts snake('the sky is blue')
# puts snake('hello')

# def camel(str)
#   words = str.split(' ')
#   counter = 0

#   while counter < words.size
#     words[counter] = words[counter].capitalize

#     counter = counter + 1
#   end

#   words.join
# end

# puts camel('the sky is blue')

# def upper_snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     break if current_word == words.size
#     words[current_word].upcase!
#     current_word += 1
#   end

#   words.join('_')
# end

# puts upper_snake('the sky is blue')

# arr = [1, 2, 3, 4, 5]
# counter = 0

# new_arr = []

# loop do
#   num = arr[counter]
#   if num >= 3
#     new_arr << 0
#   else
#     new_arr << num * 2
#   end

#   counter += 1
#   break if counter == arr.size
# end

# p new_arr

# hsh = {a: 'apple', b: 'pear', c: 'orange', d: 'kiwi', e: 'banana'}
# counter = 0

# new_hsh = {}

# for letter, fruit in hsh
#   new_hsh[letter] = fruit if fruit.size > 4
# end

# p new_hsh

# ['a', 'b', 'c'].select do |item|
#   puts item
# end
# => []

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

# def select_countries(hsh)
#   sub_set = {}
#   hsh.each_key do |country|
#     if country[0] == 'B'
#       sub_set[country] = hsh[country]
#     end
#   end
#   sub_set
# end

# p select_countries(countries_and_capitals)

def begins_with_b(string)
  string[0] == 'B'
end

countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end
