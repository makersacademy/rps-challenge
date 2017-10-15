require './lib/choice'

describe Choice do
  let(:fake_choice) { 'my_choice' }
  subject(:choice) { described_class.new(fake_choice) }

  describe '#choose' do
    it 'returns the choice it was initialised with' do
      expect(choice.value).to eq(fake_choice)
    end
  end
end
