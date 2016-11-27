require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  describe '#make_choice' do
    it 'can choose rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      computer.make_choice
      expect(computer.choice_index).to eq 0
    end

    it 'can choose paper' do
      allow(Kernel).to receive(:rand).and_return(1)
      computer.make_choice
      expect(computer.choice_index).to eq 1
    end

    it 'can choose scissors' do
      allow(Kernel).to receive(:rand).and_return(2)
      computer.make_choice
      expect(computer.choice_index).to eq 2
    end
  end


end
