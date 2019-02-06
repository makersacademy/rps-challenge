# frozen_string_literal: true

require 'game'

describe Game do
  subject(:game) { described_class.new(one, two) }
  let(:one) { double :one }
  let(:two) { double :two }

  before(:each) do
    allow(one).to receive(:name) { 'Rick' }
    allow(two).to receive(:name) { 'Morty' }
    allow(one).to receive(:weapon) { 'this' }
    allow(two).to receive(:weapon) { 'that' }
  end

  describe '#win' do
    it 'declare one the winner' do
      expect(game.win('beats')).to eq('This beats that. Rick wins!')
    end
  end

  describe '#lose' do
    it 'declare two the winner' do
      expect(game.lose('beats')).to eq('That beats this. Morty wins!')
    end
  end

  describe '#draw' do
    it 'declare it a draw' do
      expect(game.draw).to eq("It's a draw!")
    end
  end
end
