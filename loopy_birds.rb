# All about loops in Ruby

# For loop - not really used in Ruby!
# for n in 1..100
#   puts "#{n} birds on a wire - AH AH AH"
# end

# While and until loops - used when it's unclear how many times we need to loop
# understands_loops = "no"

# # while understands_loops != "yes"
# #   puts "Study more!   \n... do you understand them now?"
# #   understands_loops = gets.chomp
# # end

# until understands_loops == "yes"
#   puts "Study more!   \n... do you understand them now?"
#   understands_loops = gets.chomp
# end

# Times do loop - definitely more Ruby-ish
# # |i| is the block variable, in this case it starts at 0 and increments by 1
# 5.times do |i|
#   puts "#{i + 1} birds on a wire - AH AH AH"
# end

# 3.times do
#   puts "She loves you, yeah yeah yeah!"
# end

# Write a loop that prints out the even numbers from 1 to 100.
# current_number = 2

# while current_number <= 100
#   puts current_number
#   # This is the same as current_number = current_number + 2.
#   current_number += 2
# end

# 50.times do |i|
#   puts (i + 1) * 2
# end

# for n in 1..100
#   puts n if n % 2 == 0
# end

# Inline loops - curly brackets replace do and end
# 50.times { |i| puts (i + 1) * 2 }
# 1.upto(100){ |popcorn| puts popcorn if popcorn % 2 == 0 }

# (1..10).each do |popcorn|
#   puts "#{popcorn} kernels of yummy"
# end

# Classroom Challenge (pair program):  Create an array with at least 5 elements.  Call the .reverse and .length methods on your array.  Try out nesting the .shuffle and .join methods to list your array objects in random order, separated by commas.
# colors = ["red", "blue", "green", "lavender", "periwinkle", "fuchsia"]
# puts "#{colors.reverse}"
# puts colors.length
# puts colors.shuffle.join(",")
# puts "#{colors}"


# Each loops with arrays
scores = [100, 80, 75, 93]
sum = 0

# scores.each do |score|
#   # same as sum = sum + score
#   sum += score
# end

# inline
scores.each { |score| sum += score }

puts sum / scores.length
