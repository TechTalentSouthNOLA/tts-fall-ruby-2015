class Cup # use title case for classes and only classes

  # Have to call it "initialize" for it to work
  def initialize
    puts "I'm alive!  **SPARKLE**"
    # This is an instance variable - all cups have independent drink_amounts
    # Pretend like these are percentages
    @drink_amount = 0
  end

  def fill
    puts "I'm full!"
    @drink_amount = 100
  end

  def empty
    puts "I'm all out.  :("
    @drink_amount = 0
  end

  def sip amount = 5
    if @drink_amount == 0
      puts "Oh nooo!  There's nothing left.  Sad faces."
    elsif amount > @drink_amount
      puts "Mmm, tasty.  Just took less than a full sip though."
      @drink_amount = 0
    else
      puts "Mmm, tasty.  Just took a sip."
      @drink_amount -= amount
    end
  end

  def quantity
    puts @drink_amount
    @drink_amount
  end
end