require_relative 'player.rb'

class Game

  attr_reader :player_1, :player_2, :current_player
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def attack(player)
    player.change_hitpoints
    switching_turns
  end

  private 

  def switching_turns
    @current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1
  end 

end 