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

  describe '#judging' do
    let(:player_one) { 'Scissors' }
    let(:player_two) { 'Scissors' }
    let(:player_three) { 'Paper' }

    it 'ascertains if there is a draw' do
      message = 'We have a draw!'
      expect(game.winner?(player_one, player_two)).to eq message
    end

    it 'ascertains if a player has won' do
      message = 'Paper loses to Scissors: Computer wins!'
      expect(game.winner?(player_three, player_one)).to eq message
    end
  end
end
