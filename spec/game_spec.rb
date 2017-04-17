require 'game'

describe Game do
  let(:game){ described_class.new("Ivan","rock") }

  it 'displays initialization item' do
    expect(game.item).to eq "rock"
  end

  it 'selects rock for the computer' do
    allow(game).to receive(:computer_item) { :Rock }
    expect(game.computer_item).to eq :Rock
  end

  it 'selects paper for the computer' do
    allow(game).to receive(:computer_item) { :Paper }
    expect(game.computer_item).to eq :Paper
  end

  it 'selects scissors for the computer' do
    allow(game).to receive(:computer_item) { :Scissors }
    expect(game.computer_item).to eq :Scissors
  end

  it 'should choose a winner' do
    allow(game).to receive(:computer_item) { :Scissors }
    allow(game).to receive(:item) {"rock"}
    expect(game.winner("rock", "scissors")).to eq "Congrats"
  end
end
