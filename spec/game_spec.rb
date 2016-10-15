require 'game'

describe Game do

  subject(:game)  { described_class.new(player, computer) }
  let(:player)  { double(:player, choice: "Rock") }
  let(:computer)  { double(:computer, auto_selection: "Scissors") }

  it 'should accept two players' do
    expect(subject.player).to eq player
  end

  it 'should accept player 2 as a computer' do
    expect(subject.computer).to eq computer
  end

  it 'displays the choices available' do
    expect(Game.choices).to eq ["Rock", "Paper", "Scissors"]
  end

  it 'displays the result' do
    expect(subject.result).to eq "Rock beats Scissors"
  end

end
