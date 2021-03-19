require_relative 'player.rb'

class Game

  attr_reader :player_1, :player_2, :current_player, :other_player
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @other_player = player_2
  end

  def attack(player)
    player.change_hitpoints
  end

  def switching_turns
    @other_player = @current_player
    @current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1
  end 

end 