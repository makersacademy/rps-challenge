require 'game'

describe Game do
  subject(:game) {described_class.new(sonny)}
  let(:sonny) {double :player }
  let(:rock) {double :choice}

  describe "#initialize" do
    it 'initiates a new game with a human player 1' do
      expect(game.player).to eq sonny
    end
  end

  describe "#player_choice" do
    it "highlights the player's rps choice" do
      expect(game.player_choice).to eq rock
    end
  end
end
