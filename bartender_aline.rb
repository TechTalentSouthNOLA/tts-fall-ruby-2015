puts "Hi, what can I get you to drink?"
drink=gets.chomp
puts "Wait, how old are you?"
age=gets.chomp.to_i

if age>=21
 puts "Ok, here's your #{drink}"
else
 puts "Sorry, I can't serve you a #{drink} for #{21-age} years"
end