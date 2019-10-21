require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }

  subject(:finished_game) { described_class.new(dead_player, player2) }

  subject(:single_game) { described_class.new(player1, comp) }

  let(:dead_player) { double :player, name: 'Idead' }
  let(:player1) { double :player, name: 'Dave' }
  let(:player2) { double :player, name: 'Barry' }
  let(:comp) { double :comp, name: 'Barry' }

  describe '#player1' do
    it 'retreives the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'retreives the second player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#current_turn' do
    it "starts as player1's turn" do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#switch_turn' do
    it "switch's the players turn" do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end

  # describe '#game_over?' do
  #   it 'returns false if no-one is at or below 0 HP' do
  #     expect(game.game_over?).to eq false
  #   end

  #   it 'returns true if either player is at or below 0 HP' do
  #     expect(finished_game.game_over?).to eq true
  #   end
  # end

  # describe '#loser' do
  #   it 'returns a player with 0 HP or less' do
  #     expect(finished_game.loser).to eq dead_player
  #   end
  # end

  describe '#single_player_game' do
    it 'returns true when a single player game' do
      expect(single_game.single_player_game?).to eq true
    end
  end

  # describe '#retaliate' do
  #   it 'Attacks the other player' do
  #     expect(player1).to receive(:take_damage)
  #     expect(comp).to receive(:take_damage)
  #     single_game.attack(comp)
  #     single_game.retaliate(player1)
  #   end
  # end
end
