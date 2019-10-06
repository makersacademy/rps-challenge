require 'player'

describe Player do

  subject(:player) { Player.new(name1)}
  let(:name1) { double :player1 }
  let(:choice) {double 'move selection'}

  it "initializes with a player name" do
    expect(player.name).to eq name1
  end

  describe '#turn' do
    it "returns users move selection" do
      expect(player.move(choice)).to eq choice
    end
  end

  describe '#weapon' do
    it "returns player weapon of choice" do
      subject.move(choice)
      expect(subject.weapon).to eq choice
    end
  end

  describe '#points' do
    it "returns players points" do
      expect(subject.points).to eq 0
    end

    # it "add points to score" do
    #   expect { subject.point}.to eq 1
    # end
  end
end
