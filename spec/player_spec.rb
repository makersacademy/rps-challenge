require 'player'
require 'spec_helper'

describe Player do
  subject(:player){described_class.new(name: 'adil')}

  describe '#initialization' do
    it 'should accept a name as parameter and save it' do
      expect(player.name).to eq 'adil'
    end
  end
end
