# frozen_string_literal: true

require 'player'

describe Player do
  subject(:player) { described_class.new('Rick') }

  describe '#choice' do
    it 'can store a weapon' do
      player.choice('rock')
      expect(player.weapon).to eq('rock')
    end
  end
end
