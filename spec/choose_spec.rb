require 'choose'

describe Choose do
  let(:rock) { Choose.new('rock') }
  let(:cheese) { Choose.new('axe') }
  describe 'is #available' do
    it 'returns true if available' do
      expect(rock).to be_available
    end
    it 'returns false if not available' do
      expect(cheese).not_to be_available
    end
  end
end
