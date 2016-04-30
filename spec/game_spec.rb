require 'game'

describe Game do
  let(:player_name) { random_string }
  let(:moves) { [:rock, :paper, :scissors] }
  subject(:game) { described_class.new player_name }

  describe 'Game#create' do
    subject(:game_class) { described_class }
    it 'creates a new instance of Game' do
      expect(game_class).to receive(:new)
      game_class.create player_name
    end
  end

  describe 'Game#last' do
    subject(:game_class) { described_class }
    it 'returns an instance of Game' do
      game_class.create player_name
      expect(game_class.last).to be_a Game
    end
  end

  describe '#player_name' do
    it 'returns the name given at initialize' do
      expect(game.player_name).to eq player_name
    end
  end

  describe '#player_move= and #player_move' do
    let(:random_move) { moves.sample }
    it 'sets the move and returns the players move' do
      game.player_move = random_move
      expect(game.player_move).to eq random_move
    end
  end

  describe '#set_opponent_move and #opponent_move' do
    it 'sets and returns a random move' do
      game.set_opponent_move
      expect(moves).to include(game.opponent_move)
    end
  end

  describe '#result' do
    context 'opponent chooses rock' do
      before { allow_any_instance_of(Array).to receive(:sample).and_return(:rock) ; game.set_opponent_move }
      context 'player chooses rock' do
        it 'returns draw' do
          game.player_move = :rock
          expect(game.result).to eq :draw
        end
      end
      context 'player chooses paper' do
        it 'returns win' do
          game.player_move = :paper
          expect(game.result).to eq :win
        end
      end
      context 'player chooses scissors' do
        it 'returns lose' do
          game.player_move = :scissors
          expect(game.result).to eq :lose
        end
      end
    end

    context 'opponent chooses paper' do
      before { allow_any_instance_of(Array).to receive(:sample).and_return(:paper) ; game.set_opponent_move }
      context 'player chooses rock' do
        it 'returns lose' do
          game.player_move = :rock
          expect(game.result).to eq :lose
        end
      end
      context 'player chooses paper' do
        it 'returns draw' do
          game.player_move = :paper
          expect(game.result).to eq :draw
        end
      end
      context 'player chooses scissors' do
        it 'returns win' do
          game.player_move = :scissors
          expect(game.result).to eq :win
        end
      end
    end

    context 'opponent chooses scissors' do
      before { allow_any_instance_of(Array).to receive(:sample).and_return(:scissors) ; game.set_opponent_move }
      context 'player chooses rock' do
        it 'returns win' do
          game.player_move = :rock
          expect(game.result).to eq :win
        end
      end
      context 'player chooses paper' do
        it 'returns lose' do
          game.player_move = :paper
          expect(game.result).to eq :lose
        end
      end
      context 'player chooses scissors' do
        it 'returns draw' do
          game.player_move = :scissors
          expect(game.result).to eq :draw
        end
      end
    end
  end
end