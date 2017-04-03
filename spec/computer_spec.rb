require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  describe "#rand_choice" do
    it 'returns a random rps choice' do
      expect(Computer::SHAPES).to include computer.rand_choice
    end
  end


end
