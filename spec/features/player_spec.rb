require 'player'

describe Player do
  subject(:dania) { Player.new('Dania') }

  describe '#name' do
    it 'returns the name' do
      expect(dania.playername).to eq 'Dania'
    end
  end

  describe '#rock' do
    it '@sign will equal to rock' do
      subject.rock
      expect(subject.sign).to eq("rock")
    end
  end

  describe '#scissors' do
    it '@sign will equal to scissors' do
      subject.scissors
      expect(subject.sign).to eq("scissors")
    end
  end

  describe '#paper' do
    it '@sign will equal to paper' do
      subject.paper
      expect(subject.sign).to eq("paper")
    end
  end
end
