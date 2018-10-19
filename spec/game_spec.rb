require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  subject { Game.new(player, computer) }

  context '#initialize' do
    it 'creates a new game with 1 player and 1 computer' do
      expect(subject.player).to eq player
      expect(subject.computer).to eq computer
    end
  end
end
