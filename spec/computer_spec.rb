require 'computer'

describe 'computer' do
  subject(:computer) { Computer.new }
  describe '#score' do
    it 'expects the default score to be 0' do
      expect(computer.score).to eq 0
    end
  end
end
