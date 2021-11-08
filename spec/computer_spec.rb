require 'computer'

describe 'Player' do
  subject(:computer) { Computer.new }

  #this test does not work well... need to learn more about doubles and mocks!
  describe '#choose_rps' do
    it 'should return a random move from the array' do
      expect(computer.choose_rps).to eq 'Rock' || 'Paper' || 'Scissors'
    end
  end
end
