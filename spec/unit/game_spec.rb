require 'spec_helper'

describe Game do
  let(:user) { double :player }
  let(:user_2) { double :player }
  let(:game) { described_class.new(user) }

  describe '#rps' do
    it 'initialises with array of choices' do
      expect(game.rps).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  describe '#computer_turn' do
    it 'chooses rock, paper or scisssors for the computer' do
      allow(game.rps).to receive(:sample).and_return("Rock")
      expect(game.computer_turn).to eq "Rock"
    end
  end

  describe '#outcome' do
    context 'user wins' do
      it 'updates winner instance variable to user' do
        allow(game.rps).to receive(:sample).and_return("Rock")
        expect { game.outcome("Paper") }.to change { game.winner }.to(user)
      end
    end

    context 'user loses' do
      it 'updates winner instance variable to computer' do
        allow(game.rps).to receive(:sample).and_return("Rock")
        expect { game.outcome("Scissors") }.to change { game.winner }.to "Computer"
      end
    end

    context 'draw' do
      it 'winner variable to hold draw message' do
        allow(game.rps).to receive(:sample).and_return("Rock")
        expect { game.outcome("Rock") }.to change { game.winner }.to "It's a draw!"
      end
    end

    context 'multiplayer - player 1 wins' do
      it 'updates winner instance variable to user' do
        multiplayer_game = Game.new(user, user_2)
        expect { multiplayer_game.outcome("Paper", "Rock") }.to change {  multiplayer_game.winner }.to(user)
      end
    end

    context 'multiplayer - player 2 wins' do
      it 'updates winner instance variable to user_2' do
        multiplayer_game = Game.new(user, user_2)
        expect { multiplayer_game.outcome("Rock", "Paper") }.to change {  multiplayer_game.winner }.to(user_2)
      end
    end

    context 'multiplayer - draw' do
      it 'updates winner instance variable to its a draw' do
        multiplayer_game = Game.new(user, user_2)
        expect { multiplayer_game.outcome("Scissors", "Scissors") }.to change {  multiplayer_game.winner }.to("It's a draw!")
      end
    end
  end

  context 'multiplayer' do
    it 'returns player_1' do
      multiplayer_game = Game.new(user, user_2)
      expect( multiplayer_game.player_1).to eq user
    end

    it 'returns player_2' do
      multiplayer_game = Game.new(user, user_2)
      expect( multiplayer_game.player_2).to eq user_2
    end
  end
end
