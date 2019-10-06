require 'player'

describe Winner do

  let (:player_1) { double :player }
  let (:player_2) { double :player }
  subject { described_class.new(player_1, player_2) }

  it 'initializes with two players' do
    expect(Winner).to respond_to(:new).with(2).arguments
  end

  it 'outputs the name of the winner if there is one' do
    # allow(subject.moves).to receive(:sample).and_return("Rock")
    expect(subject.winner).to eq 'The winner is player_1'
  end

  it 'outputs the draw if draw' do
    # allow(subject.moves).to receive(:sample).and_return("Rock")
    expect(subject.winner).to eq "It's a draw!"
  end

end
