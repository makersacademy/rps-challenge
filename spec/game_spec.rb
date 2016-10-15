require 'game'

describe Game do

  subject(:game)  { described_class.new(player, computer) }
  subject(:draw_game) { described_class.new(player, test_computer) }
  let(:player)  { double(:player, choice: "Rock") }
  let(:computer)  { double(:computer, available_choices: "Scissors") }
  let(:test_computer) { double(:test_computer, available_choices: "Rock") }

  it 'should accept two players' do
    expect(game.player).to eq player
  end

  it 'should accept player 2 as a computer' do
    expect(game.computer).to eq computer
  end

  it 'displays the choices available' do
    expect(Game.choices).to eq ["Rock", "Paper", "Scissors"]
  end

  describe '#result' do
    it 'displays the result' do
      expect(game.result).to eq "Computer chose Scissors. player beats computer"
    end

    it 'displays a draw' do
      expect(draw_game.result).to eq "Draw"
    end
  end

end
