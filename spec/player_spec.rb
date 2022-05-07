require 'player'

describe Player do

  subject(:slava) {Player.new('Slava') }

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

  describe 'setting player choice' do
    it 'sets paper as player choice' do
      subject.player_choice = 'paper'
      expect(subject.player_choice).to eq 'paper'
    end
  end
end