require 'game'

describe Game do
  it 'initializes with a player class variable' do
    game = Game.new("Sam")
    expect(game.player).to eq "Sam"
  end

  describe '#shake' do
    it 'accepts one argument' do
      expect(subject).to respond_to(:shake).with(1).argument
    end
  
    it 'sets the instance variable player_shake to something' do
      subject.shake("rock")
      expect(subject.player_choice).to eq "rock"
    end
  end

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