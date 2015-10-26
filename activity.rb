todays_temp = 80
weather_condition = "sunny"

def activity(temp, condition="sunny")
  if temp > 110 || temp < 0
    puts "That's not a valid temperature for New Orleans.  Give me another temp!"
    temperature = gets.chomp.to_i
    activity(temperature, condition)
  end

  if temp == 80 && condition == "sunny"
    puts "That's the perfect temp!  Let's still go hiking."
  elsif temp > 50 && condition == "sunny"
    puts "I'm going hiking!"
  else
    puts "Let's read a book."
  end # ends if
end # ends method

def activity_case
  puts "What temperature is it?"
  temp = gets.chomp.to_i

  # inline if
  puts "The answer to life!" if temp == 42

  # The above is the same as this:
  # if temp == 42
  #   puts "The answer to life!"
  # end

  # Case statement
  case temp
    when 101
      puts "Cool off!"
    when 80..100
      puts "Let's go swimming!"
    when 50...80
      puts "Let's go hiking!"
    when 40...50
      puts "Let's go running!"
    when 0...40
      puts "Let's cozy up by the fire."
    else
      puts "What planet are you on?"
  end
end

# activity(todays_temp)
# activity(70)
# activity(40)
# activity(100000, "rainy")

activity_case