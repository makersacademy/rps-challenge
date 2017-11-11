require 'game'

describe Game do

  # Other mocks
  let(:some_player) { double(:some_player) }
  let(:some_computer) { double(:some_computer) }
  let(:some_rulebook) { double(:some_rulebook) }

  # Games
  let(:subject) {
    described_class.new(some_player, some_computer, some_rulebook) 
  }

  describe '#initialize' do
    it 'has a player' do
      expect(subject.player).to eq some_player
    end

    it 'has a computer' do
      expect(subject.computer).to eq some_computer
    end

    it 'has a rulebook' do
      expect(subject.rulebook).to eq some_rulebook
    end
  end
end
