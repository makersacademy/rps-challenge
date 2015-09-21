require 'game'

describe Game do

    let(:comp){double Comp.new}
    let(:player){Player.new("John")}

    it "a winner will be declared" do
      player.select1("rock")
      allow(comp).to receive(:choice).and_return(:scissors)
      expect(subject.play(player, comp)).to be=="John, you won!"
    end

    it "a looser will be declared" do
      player.select1("rock")
      allow(comp).to receive(:choice).and_return(:paper)
      expect(subject.play(player, comp)).to be=="John, you lost!"
    end

    it "a draw will be declared" do
      player.select1("rock")
      allow(comp).to receive(:choice).and_return(:rock)
      expect(subject.play(player, comp)).to be=="it's draw"
    end

end
