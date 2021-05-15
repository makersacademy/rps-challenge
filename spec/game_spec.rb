require 'game'

describe Game do
  subject(:game) { described_class.new }

  it 'returns a string' do
    expect(game.computer_move).to be_a String
  end

  it 'chooses scissors' do
    allow(Kernel).to receive(:rand).and_return(0)
    expect(game.computer_move).to eq('Scissors')
  end   

  it 'chooses rock' do
    allow(Kernel).to receive(:rand).and_return(1)
    expect(game.computer_move).to eq('Rock')
  end   

  it 'chooses paper' do
    allow(Kernel).to receive(:rand).and_return(2)
    expect(game.computer_move).to eq('Paper')
  end   
end