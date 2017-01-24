require 'game'

describe Game do
  subject(:game) {described_class.new(variables)}
  let(:variables) { {'player_name' => 'Varvara', 'player_instrument' => :paper, 'computer_instrument' => :rock} } #using instrumetns as symbols as they are never-changing in the game

  describe '#name' do
    it 'returns player name' do
      expect(game.player_name).to eq 'Varvara'
    end
  end

  describe '#instrument' do
    it "returns player's instrumen" do
      expect(game.player_instrument).to eq :paper
    end
  end
  describe '#computer_instrument' do
    it 'returns computer_instrument' do
      expect(game.computer_instrument).to eq :rock
    end
  end

  #describe '#player_wins?' do
  #   it 'returns true of player wins' do
  #     expect(player).to receive(:player_wins?)
  #
end
