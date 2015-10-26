# Pop trivia app

questions = [
  "Who sang Material Girl?",
  "Which actor played Zoolander?",
  "Who is not Michael Jackson's lover?"]

# store them in lowercase to make checking answers easier
answers = [
  "madonna",
  "ben stiller",
  "billie jean"]

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " Welcome to Sia's Really Cool Trivia App"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

puts "\nLet's get started...\n"

# Do for all questions
  # Ask a question
  # Get an answer and check it
  # Tell them if the answer is correct

questions.each_with_index do |question, index|
  puts question
  answer = gets.chomp.downcase
  if answer == answers[index]
    puts "CORRECT!!"
  else
    puts "I'm sorry, you're not SMAHT."
  end # ends if
end # ends the loop