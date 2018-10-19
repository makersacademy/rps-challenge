require 'game'

describe Game do
  let(:player) { double :player }
  subject { described_class.new(player: player)}

  it "should return the player" do
    expect(subject.player).to eq player
  end
end
