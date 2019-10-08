require 'game'

describe Game do

  let(:player_1) { double :player, :choice => "Rock" }
  let(:player_2) { double :player, :choice => "Scissors" }

  let(:play_1) { double :player, :choice => "Rock" }
  let(:play_2) { double :player, :choice => "Rock" }

  let(:first_player) { double :player, :choice => "Scissors" }
  let(:second_player) { double :player, :choice => "Rock" }

  let(:first_play) { double :player, :choice => "Scissors" }
  let(:computer_player) { double :player, :choice => "Rock" }

  describe '#outcome' do
    it 'returns winning message if player 1 wins' do
      Game.create(player_1, player_2)
      Game.instance
      expect(Game.outcome).to eq "WINNER"
    end

    it 'returns draw message if players draw' do
      Game.create(play_1, play_2)
      Game.instance
      expect(Game.outcome).to eq "DRAW"
    end

    it 'returns loser message if player 1 loses' do
      Game.create(first_player, second_player)
      Game.instance
      expect(Game.outcome).to eq "LOSE"
    end
  end

end
