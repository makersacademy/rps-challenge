require 'computer'

describe Computer do
  subject (:computer) {described_class.new('Computer')}
  subject(:computer_class) {described_class}

  describe 'Computer#create' do
    it 'creates a new instance of Computer' do
      expect(computer_class).to receive(:new)
      computer_class.create
    end
  end

  describe 'Computer#instance' do
    it 'returns an instance of Computer' do
      computer_class.create
      expect(computer_class.instance).to be_a Computer
    end
  end

  # describe '#weapon' do
  #   it 'chooses a weapon' do
  #     allow(computer).to receive(:weapon) {:rock}
  #     expect(computer.weapon).to eq(:rock)
  #   end
  # end
end



