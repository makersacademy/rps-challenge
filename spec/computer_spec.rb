require 'computer'

describe Computer do
  subject(:computer){ described_class.new}

  describe 'name generator' do
    it 'gets assigned a name' do
      expect(computer.name).not_to be nil
    end
  end

  describe '#make_move' do
    it 'picks one of the moves by randomn' do
      moves = ['Rock','Scissors','Paper']
      computer.make_move
      expect(moves).to include computer.move
    end

    it 'raises error if given an arg' do
      moves = ['Rock','Scissors','Paper']
      expect{computer.make_move(['Rock'])}.to raise_error ArgumentError
    end
  end
end
