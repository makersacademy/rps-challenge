
require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
    
  before do
      allow(player1).to receive(:name) { 'Charlie' }
      allow(player2).to receive(:name) { 'Roxanne' }
   end

  describe '#initialize' do

    it 'will accept a player instance and return that instance in player' do
    expect(game.player1).to eq player1
    end
  end

  describe '#results_message' do
    it 'will return true if player_2_choice and player_choice are equal' do
      allow(player2).to receive(:choice) { 'Rock' }
      allow(player1).to receive(:choice) { 'Rock' }
      expect(game.results_message).to eq 'The game was a tie'
    end

    it 'will return true if player_choice beats player_2_choice' do
      allow(player2).to receive(:choice) { 'Scissors' }
      allow(player1).to receive(:choice) { 'Rock' }
      expect(game.results_message).to eq 'Charlie wins'
    end

    it 'will return computer wins if player_2_choice beats player_choice' do
      allow(player2).to receive(:choice) { 'Scissors' }
      allow(player1).to receive(:choice) { 'Paper' }
      expect(game.results_message).to eq 'Roxanne wins'
    end
  end
end


