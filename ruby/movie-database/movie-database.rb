movies = {}

while true
  puts "What would you like to do? You can 'add', 'update', 'display', or 'exit'."
  choice = gets.chomp

  case choice
  when "add"
    puts "What movie would you like to add?"
    title = gets.chomp.to_sym
    puts "What is this movie's rating?"
    rating = gets.chomp.to_i
    if movies[title].nil?
      movies[title] = rating
      puts "#{title} was added with a rating of #{rating}."
    else
      puts "That movie already exists."
    end
  
  when "update"
    puts "Which movie's rating would you like to update?"
    title = gets.chomp.to_sym
    if movies[title].nil?
      puts "That movie is not in the database"
      else
          puts "What is the updated rating?"
          rating = gets.chomp.to_i
          movies[title] = rating
      end
  
  when "display"
    movies.each do |movie, rating| 
      puts "#{movie}: #{rating}"
    end
  
  when "delete"
    puts "What movie would you like to remove?"
    title = gets.chomp.to_sym
    if movies[title].nil?
      puts "That movie isn't in the database."
    else
      movies.delete(title)
    end
  when "exit"
    break
  else
    puts "That's not a valid selection."
  end
end