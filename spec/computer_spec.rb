require 'computer'

describe Computer do
  let(:computer){ described_class.new}

  describe '#choose' do
    it 'chooses Rock, Paper or Scissors randomly' do
      computer.choose
      expect(computer.choices).to include(computer.choice)
    end
  end
end
