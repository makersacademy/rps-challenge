require 'game'

describe Game do
 let(:player) { double :player }
 let(:playerClass) { double :Player, new: player }

subject { Game.new playerClass }

before do
  allow(player).to receive(:opponent=)
end

  it 'creates player 1' do
     expect(subject.player_1).to be player
   end

   it 'creates player_2' do
     expect(subject.player_2).to be player
   end

  describe '#play' do
    it { is_expected.to respond_to(:play) }
    it 'raises error if starting game before a player has decided on a hand to play' do
      allow(player).to receive(:chosen_hand?).and_return(false)
      expect { subject.play }.to raise_error 'Player has not picked a hand to play!'
    end
    it 'checks if there is a tie' do
      allow(player).to receive(:name).and_return('Dan')
      allow(player).to receive(:chosen_hand?).and_return(true)
      allow(subject.player_1).to receive(:hand).and_return('rock')
      allow(subject.player_2).to receive(:hand).and_return('rock')
      expect(subject.play).to eq "It's a tie!"
    end
  end

end
