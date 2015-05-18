require 'capybara/rspec'
require 'game'
require 'player'
require 'cpu'

feature 'When playing rock, paper, scissors' do
  context 'Two players:' do
    let(:player1) { Player.new 'Jack' }
    let(:player2) { Player.new 'Alex' }
    let(:two_player_game) { Game.new player1, player2 }

    scenario 'a new game with two players can be created' do
      expect(two_player_game.player_one.name).to eq 'Jack'
      expect(two_player_game.player_two.name).to eq 'Alex'
    end

    scenario 'game can compare two hands and tell you which is the winner' do
      player1.next_hand = 'scissors'
      player2.next_hand = 'rock'
      expect(two_player_game.winner).to eq player2
    end

    scenario 'game can carry out a round' do
      player1.next_hand = 'paper'
      player2.next_hand = 'rock'
      expect(two_player_game.carry_out_round).to eq player1
    end

    scenario 'returns tie message when both players play same hand' do
      player1.next_hand = 'rock'
      player2.next_hand = 'rock'
      expect(two_player_game.carry_out_round).to eq 'It\'s a tie!'
    end

    scenario 'error raised when player not ready and round carried out' do
      player2.next_hand = 'rock'
      err_msg = 'Players are not ready'
      expect { two_player_game.carry_out_round }.to raise_error err_msg
    end
  end

  context 'One player (+ cpu):' do
    let(:player1) { Player.new 'Jack' }
    let(:cpu) { CPU.new }
    let(:one_player_game) { Game.new player1, cpu }

    scenario 'a new game with a player and a cpu can be created' do
      expect(one_player_game.player_one.name).to eq 'Jack'
      expect(one_player_game.player_two).to eq cpu
    end

    scenario 'game can carry out a round' do
      player1.next_hand = 'paper'
      allow(cpu).to receive(:make_hand).and_return('rock')
      expect(one_player_game.carry_out_round).to eq player1
    end

    scenario 'returns tie message when both players play same hand' do
      player1.next_hand = 'scissors'
      allow(cpu).to receive(:make_hand).and_return('scissors')
      expect(one_player_game.carry_out_round).to eq 'It\'s a tie!'
    end

    scenario 'error raised when player not ready and round carried out' do
      err_msg = 'Players are not ready'
      expect { one_player_game.carry_out_round }.to raise_error err_msg
    end
  end
end
