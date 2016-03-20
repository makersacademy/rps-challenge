require 'player'

describe Player do
  let(:rock_paper_scissor) { double :string }
  let(:name) { double :string }
  subject(:player) { described_class.new(name) }

  describe '#initialize' do
    it 'stores the name it is initialized with' do
      expect(player.name).to eq name
    end
  end

  describe '#selected' do
    it 'stores the choice "rock" if selected' do
      player.chooses rock_paper_scissor
      expect(player.selected).to eq rock_paper_scissor
    end
  end
end
