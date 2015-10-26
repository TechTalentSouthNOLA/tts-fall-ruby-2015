givers = ["Aline", "Laura", "Ben", "Emily", "Abby", "Peter", "Paul", "Marc", "Paul", "Shannon", "Ian"]

receivers = ["Aline", "Laura", "Ben", "Emily", "Abby", "Peter", "Paul", "Marc", "Paul", "Shannon", "Ian"]

secret_santa = Hash.new

until givers.length == 0
  cousin1 = givers.shuffle![-1]
  cousin2 = receivers.shuffle![-1]

  if cousin1 != cousin2
    secret_santa[givers.pop] = receivers.pop
  else
    cousin2 = receivers.shuffle![-1]
  end
end

puts secret_santa