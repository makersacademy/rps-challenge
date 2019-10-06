require 'player'

describe Player do

  subject(:player) {described_class.new("Alec")}

  it 'returns player name' do
      expect(player.name).to eq "Alec"
    end

  it 'stores a player move' do
    player.chosen_move("Paper")
    expect(player.move).to eq "Paper"
  end
end
