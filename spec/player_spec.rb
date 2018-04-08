require 'player'

describe Player do
  subject(:player) { described_class.new("Andrew") }

  describe '#name' do
    it 'returns a players name' do
      expect(player.name).to eq 'Andrew'
    end
  end

  describe '#move_check' do
    it 'confirms the selection is a valid move' do
      expect(player.move_check?("Rock")).to eq true
    end
    it 'confirms the selection is an invalid move' do
      expect(player.move_check?("apple")).to eq false
    end
  end

  describe '#downcase_text_to_sym' do
    it 'converts a selection to downcase text and symbol' do
      expect(player.downcase_text_to_sym("Paper")).to eq :paper
    end
  end
end
