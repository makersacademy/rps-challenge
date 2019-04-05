require 'computer_player'

describe ComputerPlayer do
  describe '#random_weapon' do
    let(:comp) { double :computerplayer }
    it 'picks a random weapon' do
      allow(comp).to receive(:random_weapon).and_return("Rock")
      expect(comp.random_weapon).to eq "Rock"
    end
  end
end
