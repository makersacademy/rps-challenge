require 'game'

describe Game do
  let(:name) { double :name}
  subject(:game) {described_class.new(:name)}

  describe '#human_select' do
    it "stores player's choice of object" do
      game.human_select('rock')
      expect(game.player_one_selection).to eq 'rock'
    end
  end

  describe '#find_winner' do
    it 'outputs the correct winner' do
      srand(67809)
      game.human_select('rock')
      game.computer_select
      game.calculate_winner
      expect(game.winner).to eq game.name
    end
  end
end
