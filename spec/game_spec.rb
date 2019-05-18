require 'game'

describe Game do
  subject { described_class.new(computer, player) }
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }

  it "holds two players" do
    expect(subject.computer).to eq(computer)
  end

  describe "#weapons" do
    it 'returns available weapons' do
      expect(subject.weapons).to eq described_class::WEAPONS
    end
  end

end
