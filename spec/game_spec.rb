require 'game'

describe Game do
  subject { described_class.new(computer, player) }
  let(:computer) { double(:computer) }
  let(:player) { double(:player) }

  it "holds two players" do
    expect(subject.player).to eq(player)
  end

  describe "#weapons" do
    it 'returns available weapons' do
      expect(subject.weapons).to eq described_class::WEAPONS
    end
  end

  describe '#result' do
    # it compares player's and computer's weapon to see outcome
  end


end
