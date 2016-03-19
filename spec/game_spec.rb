
require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#initialize' do
    it 'will accept a player instance and return that instance in player' do
    expect(game.player).to eq player
    end
  end

  describe '#tie' do
    it 'will return true if comp_choice and player_choice are equal' do
      allow(game).to receive(:comp_choice) { 'Rock' }
      allow(player).to receive(:choice) { 'Rock' }
      expect(game.tie?).to be true
    end
  end

  describe '#player_wins' do
    it 'will return true if player_choice beats comp_choice' do
      allow(game).to receive(:comp_choice) { 'Rock' }
      allow(player).to receive(:choice) { 'Scissors' }
      expect(game.player_wins?).to be true
    end
  end

end


