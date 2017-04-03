require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_4) }
  subject(:game2) { described_class.new(player_1, player_5) }
  subject(:game3) { described_class.new(player_1, player_6) }
  subject(:game4) { described_class.new(player_2, player_4) }
  subject(:game5) { described_class.new(player_2, player_5) }
  subject(:game6) { described_class.new(player_2, player_6) }
  subject(:game7) { described_class.new(player_3, player_4) }
  subject(:game8) { described_class.new(player_3, player_5) }
  subject(:game9) { described_class.new(player_3, player_6) }
  let(:player_1) { "rock" }
  let(:player_2) { "paper" }
  let(:player_3) { "scissors" }
  let(:player_4) { "rock" }
  let(:player_5) { "paper" }
  let(:player_6) { "scissors" }

  describe '#result' do
    context 'Checks the result of the game' do
      it 'Player wins' do
        expect(game3.result).to eq Game::GAME_RULES[player_1.to_sym][player_3.to_sym]
        expect(game4.result).to eq Game::GAME_RULES[player_2.to_sym][player_4.to_sym]
        expect(game8.result).to eq Game::GAME_RULES[player_3.to_sym][player_5.to_sym]
      end

      it 'Player draws' do
        expect(game.result).to eq Game::GAME_RULES[player_1.to_sym][player_4.to_sym]
        expect(game5.result).to eq Game::GAME_RULES[player_2.to_sym][player_5.to_sym]
        expect(game9.result).to eq Game::GAME_RULES[player_3.to_sym][player_6.to_sym]
      end

      it 'Player loses' do
        expect(game2.result).to eq Game::GAME_RULES[player_1.to_sym][player_5.to_sym]
        expect(game6.result).to eq Game::GAME_RULES[player_2.to_sym][player_6.to_sym]
        expect(game7.result).to eq Game::GAME_RULES[player_3.to_sym][player_4.to_sym]

      end
    end
  end

end
