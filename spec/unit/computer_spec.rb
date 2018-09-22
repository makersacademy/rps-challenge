require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  context '#initialize' do
    it 'set the name as Skynet' do
      expect(computer.name).to eq 'Skynet'
    end
  end

  context '#choice' do
    it 'returns paper' do
      allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      expect(computer.player_choice).to eq 'Paper'
    end

    it 'returns rock' do
      allow_any_instance_of(Array).to receive(:sample) { 'Rock' }
      expect(computer.player_choice).to eq 'Rock'
    end

    it 'returns scissors' do
      allow_any_instance_of(Array).to receive(:sample) { 'Scissors' }
      expect(computer.player_choice).to eq 'Scissors'
    end
  end
end
