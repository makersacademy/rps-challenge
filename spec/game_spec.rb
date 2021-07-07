require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#self.create' do
    it 'returns instance of game' do
      expect(Game.create(player_1, player_2)).to eq Game.instance
    end
  end

  describe '#round' do
    it "player_1's rocks beats player_2's scissors" do
      player_1.stub(:choice) { "rock" }
      player_2.stub(:choice) { "scissors" }
      expect { game.round }.to change { game.winner }.to(player_1)
    end

    it "player_1's rocks is beaten by player_2's paper" do
      player_1.stub(:choice) { "rock" }
      player_2.stub(:choice) { "paper" }
      expect { game.round }.to change { game.loser }.to(player_1)
    end
  end

  describe '#current_player' do
    it 'returns default current player' do
      expect(game.current_player).to eq(player_1)
    end

    it 'switches player' do
      expect { game.switch_player }.to change { game.current_player }.to(player_2)
    end
  end

  describe '#all_players_selected?' do
    before(:each) do
      player_1.stub(:choice) { "rock" }
      player_2.stub(:choice) { "scissors" }
    end

    it 'Returns true if all players have selected choice' do
      expect(game.all_players_selected?).to eq true
    end
  end
end
