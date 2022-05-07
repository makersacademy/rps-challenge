require 'player'

describe Player do

  subject(:slava) {Player.new('Slava') }
  let(:player_choice) { double :player_choice }

  describe '#name' do
    it 'returns the name' do
      expect(slava.name).to eq 'Slava'
    end
  end

  describe '#player' do
    it 'defines players input' do
      expect(subject).to respond_to(:player_choice)
    end
  end

  describe '#set_choice' do
    it 'setting the player choice' do
      expect(player_choice).to receive(:compare)
    end
  end

end