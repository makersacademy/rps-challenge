require 'game'

describe Game do

subject(:game) {described_class.new(player)}
let(:player) {double :player, name: "Tim", selection: "paper"}
let(:player1) {double :player, name: "Tim", selection: "rock"}
let(:player2) {double :player, name: "Tim", selection: "scissors"}


describe '#find_computer_choice' do
  it 'will randomly choose rock, paper or scissors' do
    allow(Kernel).to receive(:rand).and_return(0)
    expect(game.find_computer_choice). to eq "paper"
  end
end

describe '#find_winner' do
  it 'will return a draw if selection is the same' do
    allow(Kernel).to receive(:rand).and_return(0)
    expect(game.find_winner). to eq "Draw"
  end
end

describe '#find_winner' do
  it 'will return player wins if selection is rock and computer selects scissors' do
    allow(Kernel).to receive(:rand).and_return(1)
    game = Game.new(player1)
    expect(game.find_winner). to eq "Tim"
  end
end

describe '#find_winner' do
  it 'will return computer wins if selection is scissors and computer selects rock' do
    allow(Kernel).to receive(:rand).and_return(2)
    game = Game.new(player2)
    expect(game.find_winner). to eq "Computer"
  end
end


end
