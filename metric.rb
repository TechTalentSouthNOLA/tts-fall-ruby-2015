# Imperial to Metric conversion program
puts "*************************************************"
puts "***  Welcome to My Fancy Conversion Program!  ***"
puts "*************************************************\n\n"
puts "What's your name?"
user = gets.chomp

puts "\nWhat is your height in inches?"
user_height_inches = gets.chomp.to_i

puts "\nAren't you a tall glass of water?  What's your weight in pounds?"
user_weight_lbs = gets.chomp.to_i

def convert_inches_to_cm inches
  # Conversion factors
  inches_to_cm = 2.54

  # Calculation
  inches * inches_to_cm
end

def convert_lbs_to_kg pounds
  # Conversion factors
  lbs_to_kg = 0.45

  # Calculation
  pounds * lbs_to_kg
end

height_cm = convert_inches_to_cm(user_height_inches)
weight_lbs = convert_lbs_to_kg(user_weight_lbs)
puts "\nHi, #{user}! Your height in cm is #{height_cm} and your weight in kg is #{weight_lbs}."
