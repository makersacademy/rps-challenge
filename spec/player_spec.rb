require 'player.rb'

describe Player do 

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:throw).with(1).argument() }
  
  describe '#throw' do
    it 'will return a weapon' do
      weapon = double()
      expect(subject.throw weapon).to eq weapon
    end
  end

  describe 'join' do
    it 'can join a game' do
      game = double()
      expect(subject.join game).to eq "#{subject.name} has joined the game"
    end
  end


end