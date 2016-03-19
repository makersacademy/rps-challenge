
require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#initialize' do
    it 'will accept a player instance and return that instance in player' do
    expect(game.player).to eq player
    end
  end

  describe '#results_message' do
    it 'will return true if comp_choice and player_choice are equal' do
      allow(game).to receive(:comp_choice) { 'Rock' }
      allow(player).to receive(:choice) { 'Rock' }
      expect(game.results_message).to eq 'The game was a tie'
    end

    it 'will return true if player_choice beats comp_choice' do
      allow(game).to receive(:comp_choice) { 'Scissors' }
      allow(player).to receive(:choice) { 'Rock' }
      allow(player).to receive(:name) { 'Charlie' }
      expect(game.results_message).to eq 'Charlie wins'
    end

    it 'will return computer wins if comp_choice beats player_choice' do
      allow(game).to receive(:comp_choice) { 'Scissors' }
      allow(player).to receive(:choice) { 'Paper' }
      expect(game.results_message).to eq 'The computer wins'
    end
  end
end


