require "players"

describe Player do
  subject { described_class.new(1, "Herodotus") }

  context "#new class" do
    it "has an ID" do
      expect(subject.ID).to eq 1
    end

    it "has a name" do
      expect(subject.name).to be_an_instance_of(String)
    end

    it "doesn't have a move stored" do
      expect(subject.move).to be_nil
    end

    it "isn't a bot" do
      expect(described_class.new(1, "Herodotus").bot).to be false
    end
  end

  it "move returns copy" do
    move = subject.move
    move = "R"
    expect(subject.move).to eq nil
  end

  context "#make_move" do
    it "adds a move" do
      (0...3).each do |i|
        move = ["R", "P", "S"][i]
        subject.enter_move(move)
        expect(subject.move).to eq move
      end
    end
  end

  context "#bot" do
    it "randomly chooses a turn" do
      bot = described_class.new(1, "Herodotus", bot = true)
      # expect(bot.move).to be_an_instance_of(String)
      expect(["R", "P", "S"]).to include(bot.move)
    end
  end
end