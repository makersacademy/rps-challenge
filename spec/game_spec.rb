require 'game'

describe Game do
  let(:computer) { double :computer }
  let(:player) { double :player }
  subject(:game) { described_class.new(player, computer) }

  describe '#rps' do
    it 'returns a player win with rock' do
      allow(computer).to receive(:makes_choice).and_return(:SCISSORS)
      allow(computer).to receive(:choice).and_return(:SCISSORS)
      allow(player).to receive(:choice).and_return(:ROCK)
      expect(game.rps).to eq :win
    end

    it 'returns a player win with scissors' do
      allow(computer).to receive(:makes_choice).and_return(:PAPER)
      allow(computer).to receive(:choice).and_return(:PAPER)
      allow(player).to receive(:choice).and_return(:SCISSORS)
      expect(game.rps).to eq :win
    end

    it 'returns a player win with paper' do
      allow(computer).to receive(:makes_choice).and_return(:ROCK)
      allow(computer).to receive(:choice).and_return(:ROCK)
      allow(player).to receive(:choice).and_return(:PAPER)
      expect(game.rps).to eq :win
    end

    it 'returns a computer win with rock' do
      allow(computer).to receive(:makes_choice).and_return(:ROCK)
      allow(computer).to receive(:choice).and_return(:ROCK)
      allow(player).to receive(:choice).and_return(:SCISSORS)
      expect(game.rps).to eq :lose
    end

    it 'returns a computer win with scissors' do
      allow(computer).to receive(:makes_choice).and_return(:SCISSORS)
      allow(computer).to receive(:choice).and_return(:SCISSORS)
      allow(player).to receive(:choice).and_return(:PAPER)
      expect(game.rps).to eq :lose
    end

    it 'returns a computer win with paper' do
      allow(computer).to receive(:makes_choice).and_return(:PAPER)
      allow(computer).to receive(:choice).and_return(:PAPER)
      allow(player).to receive(:choice).and_return(:ROCK)
      expect(game.rps).to eq :lose
    end

    it 'returns a computer win with lizard' do
      allow(computer).to receive(:makes_choice).and_return(:LIZARD)
      allow(computer).to receive(:choice).and_return(:LIZARD)
      allow(player).to receive(:choice).and_return(:SPOCK)
      expect(game.rps).to eq :lose
    end

    it 'returns a player win with spock' do
      allow(computer).to receive(:makes_choice).and_return(:SCISSORS)
      allow(computer).to receive(:choice).and_return(:SCISSORS)
      allow(player).to receive(:choice).and_return(:SPOCK)
      expect(game.rps).to eq :win
    end

    it 'returns a draw - paper' do
      allow(computer).to receive(:makes_choice).and_return(:PAPER)
      allow(computer).to receive(:choice).and_return(:PAPER)
      allow(player).to receive(:choice).and_return(:PAPER)
      expect(game.rps).to eq :draw
    end
  end

end
