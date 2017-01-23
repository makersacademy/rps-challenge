require 'game'

describe Game do
  subject(:game){described_class.new(player, opponent)}
  let(:opponent){double :opponent, name: nil, weapon: "Scissors"}
  let(:player){double :player, name: nil, weapon: "Scissors"}

  describe '#play' do
    it 'should work out the winning weapon' do
      expect(game.play(player.weapon, opponent.weapon)).to eq :draw
    end
  end

  describe '#winner' do
    it 'should output who wins the game' do
      expect(game.winner).to eq "Neither"
    end
  end


  describe '#switch' do
    it 'should switch the players' do
      game.switch
      expect(game.current_player).to eq opponent
    end
  end
end
