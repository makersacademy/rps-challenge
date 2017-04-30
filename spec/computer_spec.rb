require 'computer'

describe Computer do

  let(:computer) { described_class.new }
  describe '::new' do
    it 'has a name' do
      expect(computer.name).to eq 'AI'
    end
  end

  describe '#choose' do
    it 'picks a choice at random ' do
      allow(Kernel).to receive(:rand).and_return(2)
      computer.choose
      expect(computer.current_choice).to eq 'paper'
    end
  end
end
