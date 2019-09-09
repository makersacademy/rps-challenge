require 'game'

describe Game do
  let(:player) { double :player }
  let(:rivalbot) { double :rivalbot }
  subject(:game) { described_class.new(player, rivalbot) }

  describe '#player' do
    it 'retrives the human player' do
      expect(game.player).to eq player
    end
  end

  describe '#rivalbot' do
    it 'retrives the rivalbot' do
      expect(game.rivalbot).to eq rivalbot
    end
  end

  subject { described_class.new }
  describe '#select_winner' do
    subject(:game) { described_class.new(player, rivalbot) }
    it "compares the rivals' choices and selects the winner" do
      p subject.player
      subject.player.make_choice
      subject.rivalbot.make_choice
      expect(subject.select_winner).to satisfy { |x| ['You win!', 'Rivalbot wins!'].include?(x) }
    end
  end
end
