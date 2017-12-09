require 'choice'

describe Choice do
  let(:rock) { Choice.new('rock') }
  let(:axe) { Choice.new('axe') }
  describe '#available' do
    it 'returns true if the weapon chosen is available' do
      expect(rock).to be_available
    end
    it 'returns false if the weapon chosen is available' do
      expect(axe).not_to be_available
    end
  end
end
