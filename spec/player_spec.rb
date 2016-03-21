require 'spec_helper'

describe Player do
  
  subject(:player) { described_class.new('Charlie') }

  describe '#initialize' do
    it 'will return the player\'s name' do
      expect(player.name).to eq('Charlie')
    end
  end

  describe '#choice' do
    it 'will return the argument passed in at accept_choice' do
      player.make_choice('R')
      expect(player.choice).to eq(:R)
    end
  end

end

