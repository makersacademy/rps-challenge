require 'computer'

describe Computer do

  subject { described_class.new }

  describe 'selection' do
    it 'selects random weapon' do
    expect(subject.selection).to eq(:rock)
  end
  end
end
