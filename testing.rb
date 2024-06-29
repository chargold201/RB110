count = 1

loop do
  status = count.odd? ? "odd" : "even"
  puts "#{count} is #{status}!"
  count += 1
  break if count == 5
end