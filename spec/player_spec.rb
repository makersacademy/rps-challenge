require 'player'

describe Player do
  subject(:player)      { described_class.new(name)}
  let(:name)            { double(:name) }
  let(:point_increase)  { Player::POINTS_PER_WIN}

  describe '#name' do
    it "returns name" do
      expect(player.name).to eq name
    end
  end

  describe '#points' do
    it "returns the points" do
      expect(player.points).to eq 0
    end
  end

  it 'increases points if win' do
      expect { player.win_point }.to change { player.points }.by(point_increase)
  end

end