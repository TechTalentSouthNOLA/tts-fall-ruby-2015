require_relative "cup"

class Mojo < Cup
  def initialize
    super
    puts "Welcome to Mojo Coffee"
  end

end

sias_cap = Cup.new
lindsays_latte = Cup.new

sias_cap.fill
lindsays_latte.fill
sias_cap.sip 20
lindsays_latte.quantity