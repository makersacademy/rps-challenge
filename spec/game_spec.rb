require 'game'

describe Game do
  subject(:game) { described_class.new(params) }

  let(:params) { {'player_name' => 'Coop', 'player_choice' => :paper, 'computer_choice' => :rock }}
  let(:choices) { [:Paper, :Scissors, :Rock] }

  describe '#player' do
    it 'player has a name' do
      expect(game.player_name).to eq 'Coop'
    end
  end

  describe '#initialize' do
    it 'has an array of game options' do
      expect(game.choices).to eq choices
    end
  end

  describe '#choose' do
    it 'chooses a random game selection' do
      allow(game).to receive(:choose).and_return('Scissors')
      expect(game.choose).to eq 'Scissors'
    end
  end
end
