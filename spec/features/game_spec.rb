require 'game'

describe Game do
  subject(:game) { Game.new('Tony', 3) }

  describe '#name' do
    it 'returns the name' do
      expect(game.player_name).to eq "Tony"
    end
  end

  describe '#number_of_turns' do
    it 'returns the number of turns' do
      expect(game.winning_score).to eq 3
    end
  end

  describe '#user_score' do
    it 'returns the default user score' do
      expect(game.user_score).to eq described_class::DEFAULT_USER_SCORE
    end
  end

  describe '#computer_score' do
    it 'returns the default computer score' do
      expect(game.computer_score).to eq described_class::DEFAULT_COMPUTER_SCORE
    end
  end

end
