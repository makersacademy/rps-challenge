require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'returns computer\'s name' do
      expect(computer.name).to eq('Skynet')
    end
  end

  describe '#weapon' do
    it 'returns computer\'s weapon of choice' do
      allow_any_instance_of(Computer).to receive(:weapon) { :paper }
    end
  end

end
