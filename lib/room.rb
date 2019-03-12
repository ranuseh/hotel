require_relative 'hotel'

class Room

  attr_reader :number

  # is initialized with a room number and default price set to 200
  def initialize(number)
    @number = number
  end
  
end 