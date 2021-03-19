require_relative 'player.rb'

class Player

  attr_reader :name, :hitpoints
  
  def initialize(name)
    @name = name 
    @hitpoints = 50
  end

  def change_hitpoints
    @hitpoints -= 10
  end

end
