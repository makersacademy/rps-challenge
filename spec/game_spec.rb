require 'game'

describe Game do
  let(:game) { described_class.new(player) }
  let(:player) { double("player", :name => 'Tom')}

  it 'can randomly choose computers move' do
    test_array = []
    30.times { test_array << game.computer_move }
    expect(test_array).to include("Rock")
  end

  it 'result is draw if players moves are the same (Rock)' do
    allow(Kernel).to receive(:rand).and_return 0
    allow(player).to receive(:move).and_return "Rock"
    game.play
    expect(game.outcome).to eq("It's a draw")
  end

  it 'result is draw if players moves are the same (Paper)' do
    allow(Kernel).to receive(:rand).and_return 1
    allow(player).to receive(:move).and_return "Paper"
    game.play
    expect(game.outcome).to eq("It's a draw")
  end

  it 'result is draw if players moves are the same (Scissors)' do
    allow(Kernel).to receive(:rand).and_return 2
    allow(player).to receive(:move).and_return "Scissors"
    game.play
    expect(game.outcome).to eq("It's a draw")
  end

  it 'player wins if their move is Paper and computers Rock' do
    allow(Kernel).to receive(:rand).and_return 0
    allow(player).to receive(:move).and_return "Paper"
    game.play
    expect(game.outcome).to eq("You won")
  end

  it 'player wins if their move is Scissors and computers paper' do
    allow(Kernel).to receive(:rand).and_return 1
    allow(player).to receive(:move).and_return "Scissors"
    game.play
    expect(game.outcome).to eq("You won")
  end

  it 'player loses if their move is Scissors and computers Rock' do
    allow(Kernel).to receive(:rand).and_return 0
    allow(player).to receive(:move).and_return "Scissors"
    game.play
    expect(game.outcome).to eq("Computer won")
  end
end
