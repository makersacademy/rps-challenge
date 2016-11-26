require 'game'

describe Game do

  subject(:game) {described_class.new(choice)}
  let(:choice) {double :choice}

  it 'should be initialized with the players choice' do
    expect(game.choice).to eq choice
  end






end
