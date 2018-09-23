require 'compy'

describe Compy do

  describe '#rand_rps' do
    it 'returns rock, paper or scissors at random' do
      srand(1)
      expect(subject.rand_rps).to eq("Paper")
    end
  end
end
