require 'npc'

describe Npc do

  subject(:npc) { described_class.new}

  context '#choose' do
    it 'chooses rock paper or scissors' do
      srand(1)
      expect(npc.choose).to eq :paper
    end
  end


end
