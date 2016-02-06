require 'computer'

describe Computer do
  subject(:computer){ described_class.new}

  describe 'name generator' do
    it 'gets assigned a name' do
      expect(computer.name).not_to be nil
    end
  end

  describe '#move' do
    it 'picks one of the moves by randomn' do
      moves = ['Rock','Scissors','Paper']
      computer.make_move
      expect(moves).to include computer.move
    end
  end
end
