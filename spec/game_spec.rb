require 'game'

describe 'Game' do
  let(:game){ described_class.new(item) }

  it 'displays initialization item' do
    expect(game.item).to eq item
  end

  it 'selects scissors for the computer' do
    allow(game).to receive(:computer_item) { :Scissors }
    expect(game.computer_item).to eq :Scissors
  end
end
