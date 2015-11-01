require 'computer'

describe Computer do
  let(:name) { 'Computer' }
  subject(:computer) { described_class.new }

  context '#initialization' do
    it 'has a name' do
      expect(computer.name).to eq name
    end

    it { is_expected.to respond_to(:shape) }
  end
  
end