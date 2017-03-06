require 'spec_helper'
require './lib/player'

describe Player do
  subject(:player) { described_class.new("John") }

  context 'setup' do
    it 'should initialize with a name' do
      expect(player.name).to eq "John"
    end
  end

  context 'it knows which selection the player made' do
    it 'knows which selection a player has made' do
      player.pick("Rock")
      expect(player.selection).to eq "Rock"
    end
  end
end
