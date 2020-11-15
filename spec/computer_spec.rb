require 'computer'
require 'player'

describe Computer do
  let(:bot) { Computer.new }
  it "has an initial move of nil" do
    expect(bot.move).to eq nil
  end
  it "responds to the method #random_move" do
    expect(bot).to respond_to :random_move
  end
  it 'knows its move' do
    allow(bot).to receive(:random_move) {'rock'}
    expect(bot.random_move).to eq 'rock'
  end
end
