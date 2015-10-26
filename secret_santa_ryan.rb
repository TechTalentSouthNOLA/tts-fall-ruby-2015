# Create a Secret Santa app

## Parts
##  - Participants
##  - Givers
##  - Receivers
##  They're the same people but they have to be
##    - matched up
##    - you can't be matched with yourself
##  - List of gifts to be given
##    - Matched to the giver (hash)

# Variables
all_participants = []
givers = []
receivers = []
givers_and_their_gifts = {}
givers_and_receivers = {}
system('clear')
puts "**************************************"
puts "**************************************"
puts "**            Welcome to            **"
puts "**           Secret Santa           **"
puts "**************************************"
puts "**************************************\n\n"

sleep 1

puts "It's time to make a list of all the people participating."
puts "Please list everyone who wants to play."
puts "\nYou can type in everyone all at once,\njust put a comma inbetween names."
puts "(ie. name, name, name)"
print "> "

# Gets the name list and splits it.
# Saves it into the array "all_participants"
initial_names_list = gets.chomp
all_participants = initial_names_list.split(", ")

# Populates the list "givers" with all the participants
all_participants.each { |participant| givers << participant }

# puts "givers - #{givers.to_s}"

# Populates the list "receivers" with all the participants
all_participants.each { |participant| receivers << participant}

# puts "receivers - #{receivers.to_s}"

# Match up the givers and receivers
# Create a hash called "givers_and_recievers" with an each loop
givers.each do |gifter, giftee|
 giftee = receivers.pop
 givers_and_receivers[gifter] = giftee
end
system('clear')
# puts givers_and_receivers

givers_and_receivers.each do |santa, kid|
 puts "\nHey #{santa}, what are you going to get for #{kid}?"
 print " > "
 gift = gets.chomp
 givers_and_their_gifts[santa] = gift
 system('clear')
end

# puts givers_and_their_gifts

# Give out the gifts
system('clear')
sleep 2
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "        It's about that time!!        "
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"

givers_and_receivers.each do |santa, kid, gift|
 kid = givers_and_receivers[santa]
 gift = givers_and_their_gifts[santa]
 puts "\nHey #{kid}!"
 puts "Guess what?!?!?"
 sleep 1
 puts "Your Secret Santa got you #{gift}!!!"
 sleep 2
end

4.times { puts"" }