namearray=[]
santahash= {}
puts "Enter the name of everyone in your secret santa group. type end when you are finished."
name=gets.chomp
namearray.push(name)
while name.downcase != "end"
    puts "Add another person:"
    name=gets.chomp!
    namearray.push(name)
end
#takes "end" out of array
namearray.pop
namearray.shuffle!
#makes counter based on how many pairs of names entered
loopnum=(namearray.count/2)
puts loopnum
#loop that pops the last two names off the randomized list and adds them as key value pair to santahash
 while loopnum>0 do
    name1 = namearray.pop
    name2 = namearray.pop
    santahash.store(name1, name2)
    loopnum -= 1
 end

puts santahash