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
end