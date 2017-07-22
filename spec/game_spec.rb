require 'game'

describe Game do
  subject(:game) { described_class.new(params) }

  let(:params) { { 'player_name' => 'Coop', 'player_choice' => :paper, 'computer_choice' => :rock } }

  describe '#player' do
    it 'player has a name' do
      expect(game.player_name).to eq 'Coop'
    end

    it 'player has a choice' do
      expect(game.player_choice).to eq :paper
    end

    it 'computer has a choice' do
      expect(game.computer_choice).to eq :rock
    end
  end
end
