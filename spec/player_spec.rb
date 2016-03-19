require 'spec_helper'

describe Player do
  
  subject(:player) { described_class.new('Charlie') }

  describe '#initialize' do
    it 'will return the player\'s name' do
      expect(player.name).to eq('Charlie')
    end
  end
end

