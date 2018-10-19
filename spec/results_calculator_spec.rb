require 'results_calculator'

describe ResultsCalculator do
  let(:player_rock) { double(:player, name: "Alice", weapon: "ROCK") }
  let(:player_paper) { double(:player, name: "Bob", weapon: "PAPER") }
  let(:player_scissors) { double(:player, name: "Alicebob", weapon: "SCISSORS") }
  let(:calculator_1) { described_class.new(player_rock, player_scissors) }
  let(:calculator_2) { described_class.new(player_paper, player_rock) }
  let(:calculator_3) { described_class.new(player_scissors, player_paper) }
  let(:draw) { described_class.new(player_rock, player_rock) }

  it 'should have a set list of moves' do
    list = {
      "ROCK" => "SCISSORS",
      "PAPER" => "ROCK",
      "SCISSORS" => "PAPER"
    }
    expect(described_class::MOVES).to eq list
  end

  describe "#winner" do
    it 'should declare that rock wins over scissors' do
      expect(calculator_1.winner).to eq player_rock.name
    end

    it 'should declare that paper wins over rock' do
      expect(calculator_2.winner).to eq player_paper.name
    end

    it 'should declare that scissors wins over paper' do
      expect(calculator_3.winner).to eq player_scissors.name
    end

    it 'should be able to declare a draw' do
      expect(draw.winner).to eq "It's a draw!"
    end
  end
end
