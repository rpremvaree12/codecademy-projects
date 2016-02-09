def daffy_duck
  puts "What would you like to say?"
  user_input = gets.chomp
  user_input.downcase!
    if user_input.include? "s"
        user_input.gsub!(/s/,"th")
    else
      "There are no 's's in the string."
    end
end

puts daffy_duck