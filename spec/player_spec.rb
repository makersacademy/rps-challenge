require 'player'

describe Player do

  subject { Player.new('Leon') }

  context '#initialize player class' do
    it 'should contain a name' do
      expect(subject.name).to eq 'Leon'
    end

    it 'should contain rock paper scissors as valid moves' do
      expect(subject.valid_moves).to eq [:rock, :paper, :scissors]
    end
  end

  context '#choose' do
    it 'rock, paper or scissors by typing in move as argument' do
      expect(subject).to respond_to(:choose).with(1).argument
    end

    it 'should return what they have chosen' do
      expect(subject.choose(:rock)).to eq :rock
    end

    it 'should fail if choice is not a valid move' do
      expect{ subject.choose(:spaghetti) }.to raise_error 'Sorry, that is not a valid move'
    end
  end

end