require_relative '../lib/game'

describe Game do

  subject(:game) { described_class.new(player_one, player_two, 1) }

  let(:player_one) { double() }
  let(:player_two) { double() }
  
  it "has a game id" do
    expect(game.id).to eq 1
  end

  describe '#play_game' do
    it "returns a win for the first player" do
      allow(player_one).to receive(:weapon).and_return("paper")
      allow(player_two).to receive(:weapon).and_return("rock")
      expect(game.play_game).to eq :win
    end
  end

end
