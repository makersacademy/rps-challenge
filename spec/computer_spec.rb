require 'computer'

describe Computer do

let(:computer) { described_class.new }
  describe '::new' do
    it 'has a name' do
      expect(computer.name).to eq 'AI'
    end
  end
end
