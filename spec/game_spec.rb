require 'game'

describe Game do
  subject { described_class.new(player) }
  let(:player) { double(:player) }

  it "holds a player" do
    expect(subject.player).to eq(player)
  end 

end
