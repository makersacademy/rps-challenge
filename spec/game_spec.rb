require 'game'

describe Game do
  let(:player_name) { double :player_name }
  let(:subject) { described_class.new(player_name) }

  describe '#player_name' do
    it 'returns the players name' do
      expect(subject.player_name).to eq player_name
    end
  end

  describe '#self.get' do
    it 'returns an instance of class' do
      subject = Game.create(player_name)
      expect(Game.instance).to eq subject
    end
  end

  describe '#player_choice' do
    it 'returns the players rps choice' do
      subject.player_picks('Rock')
      expect(subject.player_choice).to eq 'Rock'
    end
  end
end
