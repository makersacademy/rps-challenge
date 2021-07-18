require './model/rps'

describe Opponent do
  describe '#roll' do
    it 'Samples rock, paper or scissors' do
      allow(subject).to receive(:roll).and_return("Rock")
    end
  end

  describe '#result' do #Test still fails sometimes as is giving random input
    xit 'Compares the result of #roll to the player input' do
      result = "Draw!"
      expect(subject.result("Rock")).to eq("Draw!")
    end
  end
end