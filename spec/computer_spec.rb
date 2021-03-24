require 'computer'

describe Computer do
  describe '#next_move' do
    it 'responds to the call to return a move' do
      computer = Computer.new("Computer")
      expect(computer).to respond_to(:next_move)
    end
  end
end
