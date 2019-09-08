# frozen_string_literal: true

require './lib/game'
require './lib/rules'
require './lib/repository'

describe Game do
  let(:player1) { instance_double('Player', id: '1') }
  let(:player2) { instance_double('Player', id: '2') }
  let(:player3) { instance_double('Player', id: '3') }

  let(:rules)   { instance_double('Rules', valid_moves: [:rock, :paper, :scissors]) }

  GAME_NAME = 'Test Game'
  
  subject { init_subject }

  def init_subject
    Game.new(GAME_NAME, rules)
  end

  describe '#initialize' do
    it 'creates an empty game' do
      expect(subject.player1).to be_nil
      expect(subject.player2).to be_nil
    end

    it 'has a name' do
      expect(subject.name).to eq GAME_NAME
    end
  end

  describe '#add_player' do
    it 'can add two players' do
      subject.add_player(player1)
      subject.add_player(player2)
      expect(subject.player1).to be player1
      expect(subject.player2).to be player2
    end

    it 'can only add two players' do
      subject.add_player(player1)
      subject.add_player(player2)
      expect { subject.add_player(player3) }.to raise_error Game::Full
    end

    it 'cannot add duplicate players' do
      subject.add_player(player1)
      expect { subject.add_player(player1) }.to raise_error Game::DuplicatePlayer
    end
  end

  describe '#play' do
    ROCK  = :rock
    PAPER = :paper

    before :each do
      subject.add_player(player1)
      subject.add_player(player2)

      allow(player1).to receive(:request_move).and_return(ROCK)
      allow(player2).to receive(:request_move).and_return(PAPER)

      allow(subject).to receive(:finished?).and_return(false, false, true)

      allow(player1).to receive(:chosen_move)
      allow(player2).to receive(:chosen_move)

      allow(player1).to receive(:new_turn)
      allow(player2).to receive(:new_turn)
    end

    it 'asks players for their moves until game is finished' do
      expect(player1).to receive(:request_move).exactly(2).times
      expect(player2).to receive(:request_move).exactly(2).times
      subject.play
    end

    it 'hands players a list of valid moves' do
      expect(rules).to receive(:valid_moves)
      subject.play
    end

    it 'starts a new turn for the players' do
      expect(player1).to receive(:new_turn)
      expect(player2).to receive(:new_turn)
      subject.play
    end
  end

  describe '#winner' do
    it 'asks its rules for a winner' do
      subject.add_player(player1)
      subject.add_player(player2)
      expect(rules).to receive(:winner).with(player1, player2)
      subject.winner
    end
  end

  describe '#ready?' do
    it 'is not ready when player slots are not occupied' do
      expect(subject.ready?).to eq false
    end

    it 'is ready when both player slots are occupied' do
      subject.add_player(player1)
      subject.add_player(player2)
      expect(subject.ready?).to eq true
    end
  end

  describe '#finished' do
    it 'is false when a player is yet to play' do
      allow(player1).to receive(:chosen_move).and_return(:rock)
      allow(player2).to receive(:chosen_move).and_return(nil)

      subject.add_player(player1)
      subject.add_player(player2)

      expect(subject.finished?).to be false
    end

    it 'is true when both players have played' do
      allow(player1).to receive(:chosen_move).and_return(:rock)
      allow(player2).to receive(:chosen_move).and_return(:paper)

      subject.add_player(player1)
      subject.add_player(player2)

      expect(subject.finished?).to be true
    end
  end
end