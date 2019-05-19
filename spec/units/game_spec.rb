require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:subject) { Game.new(player, computer) }

  describe '#player' do
    it 'returns player' do
      expect(subject.player).to eq(player)
    end
  end

  describe '#computer' do
    it 'returns computer' do
      expect(subject.computer).to eq(computer)
    end
  end

  describe '#random_choice' do
    it 'returns random choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return("rock")

      expect(subject.random_choice).to eq("rock")
    end
  end
end
