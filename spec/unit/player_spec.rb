require "player.rb"

describe Player do
  let(:subject) { described_class.new("Jose") }
  it "has a name" do
    expect(subject.name).to eq "Jose"
  end
  describe "#set_play" do
    it "set the play variable as requested" do
      expect { subject.set_play("rock") } .to change { subject.play } .to("rock")
    end

  end
end
