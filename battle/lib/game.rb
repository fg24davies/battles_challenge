require_relative 'player.rb'

class Game
  
  def attack(player)
    player.change_hitpoints
  end

end 