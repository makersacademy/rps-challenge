require 'game'

describe Game do
  describe 'call a winner' do
    let(:player) { double :player, moved: 'rock' }
    let(:computer) { double :computer, moved: 'paper' }
    it 'compares moves' do
      expect(subject.winner(player.moved)).to eq "computer"
    end
  end
end
