require 'game'

describe Game do
  subject(:game){described_class.new(player, opponent)}
  let(:opponent){double :opponent, name: nil, opp_weapon: "Scissors"}
  let(:player){double :player, name: nil, player_weapon: "Scissors"}

  it 'should initialize with a rules hash' do
    expect(game.rules).to_not be_nil
  end

  describe '#winner' do
    it 'should work out who wins the game' do
      expect(game.play(player.player_weapon, opponent.opp_weapon)).to eq "Draw"
    end
  end

  describe '#switch' do
    it 'should switch the players' do
      game.switch
      expect(game.current_player).to eq opponent
    end
  end
end
