require 'player'

describe Player do
  it 'returns the players name' do
    player = Player.new("Lily")
    expect(player.name).to eq ("Lily")
  end
end 