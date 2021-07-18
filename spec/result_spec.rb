require 'result'

describe Result do
  describe '#outcome' do
    context 'the player wins' do
      let(:player) { double :player, selection: 'Rock' }
      let(:npc) { double :npc, selection: 'Scissors' }
      subject(:result) { described_class.new(player, npc) }
      it 'returns correct string' do
        expect(result.outcome).to eq('You win!')
      end
    end

    context 'the player loses' do
      let(:player) { double :player, selection: 'Rock' }
      let(:npc) { double :npc, selection: 'Paper' }
      subject(:result) { described_class.new(player, npc) }
      it 'returns correct string' do
        expect(result.outcome).to eq('You lose...')
      end
    end

    context 'its a tie' do
      let(:player) { double :player, selection: 'Rock' }
      let(:npc) { double :npc, selection: 'Rock' }
      subject(:result) { described_class.new(player, npc) }
      it 'returns correct string' do
        expect(result.outcome).to eq("It's a tie")
      end
    end
  end
end
