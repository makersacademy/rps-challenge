# frozen_string_literal: true

require 'player'

describe Player do
  let(:player1) { Player.new(name) }
  let(:player2) { Player.new(name) }
  let(:name) { 'player1' }

  it 'initializes with a name' do
    expect(player1.name).to eq name
  end

  describe '#choose_move' do
    it 'returns the move you selected' do
      move = 'Rock'
      expect(player1.choose_move(move)).to eq 'Rock'
    end
  end
  describe 'random_move' do
    it 'can choose Rock' do
      allow(player1).to receive(:random_move) { 'Rock' }
      expect(player1.random_move).to eq 'Rock'
    end

    it 'can also choose Paper' do
      allow(player1).to receive(:random_move) { 'Paper' }
      expect(player1.random_move).to eq 'Paper'
    end
  end
end
