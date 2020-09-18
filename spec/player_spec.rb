require 'player'

describe Player do
  subject = Player.new("Sam")

  describe '#shake' do
    it 'accepts one argument' do
      expect(subject).to respond_to(:shake).with(1).argument
    end
  
    it 'sets the instance variable player_shake to something' do
      subject.shake("rock")
      expect(subject.choice).to eq "rock"
    end
  end
end