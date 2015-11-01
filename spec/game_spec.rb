require 'game'

describe Game do
  let(:game){ described_class.new}

  describe '#choose' do
    it 'chooses Rock, Paper or Scissors randomly' do
      game.choose
      expect(game.choices).to include(game.choice)
    end
  end
end
