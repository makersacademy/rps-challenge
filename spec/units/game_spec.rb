require 'game'

describe Game do

  let(:player_1) { double 'player', name: "Josie" }
  let(:player_2) { double 'player', name: "Computer" }
  subject(:game) { described_class.new player_1, player_2 }

  context 'Game initializes with:' do
    it 'a player_1' do
      expect(game.players.first.name).to eq "Josie"
    end
    it 'a player_2' do
      expect(game.players.last.name).to eq "Computer"
    end
  end

end
