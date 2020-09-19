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

  describe '#rules' do
    it 'says draw if the choices are the same' do
      player.shake("rock")
      srand(0)
      subject.bot_shake
      expect(subject.rules).to eq "Draw"
    end

    it 'declares the player the winner' do
      player.shake("paper")
      srand(0)
      subject.bot_shake
      expect(subject.rules).to eq "Test player is the winner!"
    end

    it 'declares the bot the winner' do
      player.shake("scissors")
      srand(0)
      subject.bot_shake
      expect(subject.rules).to eq "The bot is the winner!"
    end
  end
end
