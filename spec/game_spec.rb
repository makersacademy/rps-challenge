require 'game'

describe Game do
  subject(:game) { described_class.new(params) }

  let(:params) { { 'player_name' => 'Coop', 'player_choice' => :Paper, 'computer_choice' => :Rock } }

  describe '#player' do
    it 'player has a name' do
      expect(game.player_name).to eq 'Coop'
    end

    it 'player has a choice' do
      expect(game.player_choice).to eq :Paper
    end

    it 'computer has a choice' do
      expect(game.computer_choice).to eq :Rock
    end
  end

  context '#winner?' do
    it 'player has won' do
      expect(game.result).to be_a_kind_of(String)
    end

    it 'player has lost' do
      expect(game.result).to be_a_kind_of(String)
    end

    it 'players have drawn' do
      expect(game.result).to be_a_kind_of(String)
    end
  end
end
