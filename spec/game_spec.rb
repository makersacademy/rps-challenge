require 'game'
require 'player'

describe Game do
  player = Player.new("Test player")
  subject = Game.new(player)

  describe '#bot_shake' do
    it 'sets @bot_choice to "rock" from an array' do
      srand(0)
      subject.bot_shake
      expect(subject.bot_choice).to eq "rock"
    end

    it 'sets @bot_choice to "paper" from an array' do
      srand(1)
      subject.bot_shake
      expect(subject.bot_choice).to eq "paper"
    end

    it 'sets @bot_choice to "scissors" from an array' do
      srand(3)
      subject.bot_shake
      expect(subject.bot_choice).to eq "scissors"
    end
  end

end
