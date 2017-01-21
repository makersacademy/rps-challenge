require './lib/player.rb'

describe Player do
  subject(:player) {described_class.new("Tamar")}

    describe '#Player Class' do
      it 'initializes with a name' do
      expect(player.name).to eq("Tamar")
      end

      it 'initializes with a score of 0' do
      expect(player.score).to eq(0)
      end
    end
    
end
