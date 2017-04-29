require 'computer'

describe 'computer' do
  subject = Computer.new
  describe '#score' do
    it 'expects the default score to be 0' do
      expect(subject.score).to eq 0
    end
  end
end
