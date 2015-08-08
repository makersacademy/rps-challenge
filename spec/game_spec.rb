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
    xit { is_expected.to respond_to(:play) }
  end

end
