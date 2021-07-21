require './model/rps'

describe Opponent do
  describe '#roll' do
    it 'Samples rock, paper or scissors' do
      allow(subject).to receive(:roll).and_return("Rock")
    end
  end

  describe '#result' do 
    it 'Compares the result of #roll to the player input' do
      result = "Draw!"
     allow_any_instance_of(Opponent).to receive(:roll).and_return("Scissors")
    end
  end
end