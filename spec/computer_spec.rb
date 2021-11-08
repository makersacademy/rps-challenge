require 'computer'

describe 'Player' do
  subject(:computer) { Computer.new }

  describe '#choose_rps' do
    it 'should return a random move from the array' do
      expect(computer.choose_rps).to eq 'Rock' || 'Paper' || 'Scissors'
    end
  end
end
