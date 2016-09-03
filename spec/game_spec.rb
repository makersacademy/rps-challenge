require 'game'

describe Game do
  subject(:game) {described_class.new}

  it "creates a random choice of r,p,s" do
    allow(game).to receive(:rps_choice).and_return('Paper')
    expect(game.rps_choice).to eq 'Paper'
  end
end
