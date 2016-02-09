def formatter
  puts "What's your first name?"
  first_name = gets.chomp  #.capitalize! returns nil if there are no changes
  first_name.capitalize!

  puts "What's your last name?"
  last_name = gets.chomp
  last_name.capitalize!

  puts "What city do you live in?"
  city = gets.chomp
  city.capitalize!

  puts "What state do you live in?"
  state = gets.chomp
  state.upcase!

  puts "Your name is #{first_name} #{last_name} and live in #{city}, #{state}"
end

formatter