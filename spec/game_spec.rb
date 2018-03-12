require_relative '../lib/game.rb'

describe Game do
  subject(:game_ai) { Game.new('ai') }
  subject(:game_multi) { Game.new('multiplayer') }
  let(:player_handless) { double :player, hand: nil }
  let(:player_hand) { double :player, hand: 'Rock' }

  describe '#create_player' do
    it 'a player is created and set as the current player if name is not nil' do
      game_ai.create_player("Tom")
      expect(game_ai.current_player.name).to eq("Tom")
    end
    it 'if name is nil an AI player is created' do
      game_ai.create_player(nil)
      expect(game_ai.current_player.name).to eq("AI")
    end
  end

  describe '#evaluate' do
    it 'calls the method evaluate_ai when the gamemode is ai' do 
      expect(game_ai).to receive(:evaluate_ai)
      game_ai.evaluate
    end
    it 'calls the method evaluate_multi when the gamemode is multiplayer' do 
      expect(game_multi).to receive(:evaluate_multi)
      game_multi.evaluate
    end
  end

  describe '#evaluate_multi' do
    it 'returns nil if current player hand is nil' do 
      game_multi.instance_variable_set(:@current_player, player_handless)
      expect(game_multi.evaluate_multi).to eq(nil)
    end
    it 'calls compare_hands if all players have a hand' do 
      game_multi.instance_variable_set(:@current_player, player_hand)
      game_multi.instance_variable_set(:@players, [player_hand, player_hand])
      expect(game_multi).to receive(:compare_hands)
      game_multi.evaluate_multi
    end
    it 'calls switch if one player has a hand and another doesnt' do
      game_multi.instance_variable_set(:@current_player, player_hand)
      game_multi.instance_variable_set(:@players, [player_handless, player_hand])
      expect(game_multi).to receive(:switch)
      game_multi.evaluate_multi
    end
  end

  describe '#evaluate ai' do
    it 'calls the methods ai_hands and compare_hands' do
      game_ai.instance_variable_set(:@current_player, player_handless)
      expect(game_ai).to receive(:ai_hand)
      expect(game_ai).to receive(:compare_hands)
      game_ai.evaluate_ai
    end
  end
end



