require 'computer'

describe Computer do

subject(:computer) { described_class.new }

  describe '1 #choice' do
    it '1.0 computer can choose an attack' do
      srand(129)
      expect(computer.choose).to eq :rock
    end
  end

end
