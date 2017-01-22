require 'game'

describe Game do
  subject(:game){described_class.new}
  let(:opponent){double :opponent, opp_weapon: "Scissors"}
  let(:player){double :player, player_weapon: "Rock"}

  it 'should initialize with a rules hash' do
    expect(game.rules).to_not be_nil
  end

  describe '#winner' do
    it 'should work out who wins the game' do
      expect(game.play(player.player_weapon, opponent.opp_weapon)).to eq "Player 1 wins"
    end
  end
end
