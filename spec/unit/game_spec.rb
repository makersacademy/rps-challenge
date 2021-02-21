# frozen_string_literal: true

require 'game'

describe Game do
  let(:player_one) { instance_double('Player', name: 'sandy') }
  let(:player_two) { instance_double('Player', name: 'finn') }
  let(:my_game) { Game.new(player_one, player_two) }

  # it 'takes two players as parameters' do
  #   expect(Game).to respond_to(:new).with(2)
  # end

  describe '#players' do
    it 'knows the players participating to the game' do
      expect(my_game.players).to eq [player_one, player_two]
    end
  end
  describe '#player_one' do
    it 'knows the players participating to the game' do
      expect(my_game.player_one).to eq player_one
    end
  end
  describe '#player_two' do
    it 'knows the players participating to the game' do
      expect(my_game.player_two).to eq player_two
    end
  end
  describe '#select' do
    it 'passes the user choices and stores it' do
      expect(player_one).to receive(:receive_choice) { 'Rock' }
      my_game.selection(player_one, 'Rock')
    end
  end
  describe '#random_selection' do
    it 'sends a random value to #receive_choice' do
      expect(player_one).to receive(:receive_choice) { 'Rock' }
      my_game.random_selection(player_one)
      allow(my_game).to receive(:random_selection) { 'Rock' }
    end
  end

  describe '#results' do
    it 'decides who is the winner' do
      player = instance_double('Player', name: 'Sandy', choice: 'Rock')
      computer = instance_double('Player', name: 'Computer', choice: 'Paper')
      my_game = Game.new(player, computer)
      my_game.results(player, computer)
      expect(my_game.winner).to eq 'Computer'
    end
    it 'decides who is the winner' do
      player = instance_double('Player', name: 'Sandy', choice: 'Scissors')
      computer = instance_double('Player', name: 'Computer', choice: 'Paper')
      my_game.results(player, computer)
      expect(my_game.winner).to eq 'Sandy'
    end
  end
end
