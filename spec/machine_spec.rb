require 'machine'

describe Machine do
  subject(:machine) {described_class.new}

  context "when initialized" do
    it {is_expected.to respond_to :name}

    it "should have a random name" do
      allow(machine).to receive(:name).and_return("Harley Quinn")
      expect(machine.name).to eq ("Harley Quinn")
    end

  end

  context "when playing" do
    it {is_expected.to respond_to :choose}

    it "should have one weapon randomly" do
      allow(machine).to receive(:weapon).and_return("paper")
      expect(machine.weapon).to eq ("paper")
    end

  end

end
