def redacted
  puts "Enter text to search through:"
  text = gets.chomp
  puts "Enter words you wish to redact separated by commas:"
  redacts = gets.chomp.gsub(/[\s,]/," ").split(" ")

  words = text.split(" ")
  words.each_with_index do |word,index|
    redacts.each do |redact|
      if word == redact
        puts words
        words[index] = "REDACTED "
      else
        words[index] = word + " "
      end
    end
  end
  words.join()
end

puts redacted
  
