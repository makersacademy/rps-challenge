require 'game'

describe Game do

  # subject(:game) {described_class.new}

  describe '#cpu' do
    it 'recieves the cpu move' do
      expect(subject.cpu('paper')).to eq 'paper'
    end
  end

  describe '#player' do
    it 'recieves the player move' do
      expect(subject.player('rock')).to eq 'rock'
    end
  end
 
  describe '#outcome' do
    it 'expects to return draw' do
      subject.cpu('rock')
      subject.player('rock')
      expect(subject.outcome).to eq 'Draw'
     end
  end
end