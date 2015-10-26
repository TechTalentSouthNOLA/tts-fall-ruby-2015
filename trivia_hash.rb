# Pop trivia app

questions_answers = {
  "Who sang Material Girl?" => "madonna",
  "Which actor played Zoolander?" => "ben stiller",
  "Who is not Michael Jackson's lover?" => "billie jean"
}

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " Welcome to Sia's Really Cool Trivia App"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

puts "\nLet's get started...\n"

# Do for all questions
  # Ask a question
  # Get an answer and check it
  # Tell them if the answer is correct

questions_answers.each do |question, answer|
  puts question
  questions_answers[question] = "what's your name?"
  puts question
  user_answer = gets.chomp.downcase
  if user_answer == answer
    puts "CORRECT!!"
  else
    puts "I'm sorry, you're not SMAHT."
  end # ends if
end # ends the loop

puts questions_answers.to_s