require 'game'

describe Game do
  
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:game) { Game.new }

  describe '#attack' do 
    it 'reduces HP by 10 after an attack' do
      expect(player_2).to receive(:change_hitpoints)
      game.attack(player_2)
    end
  end 

end 
