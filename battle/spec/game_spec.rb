require 'game'

describe Game do
  
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:game) { Game.new(player_1, player_2) }

  describe '#player_1' do
    it 'retrieves player 1 object' do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it 'retrieves player 2 object' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#attack' do 
    it 'reduces HP by 10 after an attack' do
      expect(player_2).to receive(:change_hitpoints)
      game.attack(player_2)
    end
  end 
  
  describe '#switching_turns' do
    it 'switches the current player' do
      allow(player_2).to receive(:change_hitpoints)
      game.attack(player_2)
      expect(game.current_player).to eq player_2
    end 
  end 
end 
