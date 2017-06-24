
require_relative "../lib/rules"

describe Rules do

  subject(:rules) { described_class.new }

  describe "attributes" do
    it {is_expected.to respond_to(:the_weapons)}

    describe "#the_weapons" do
      it "returns the games's possible weapons" do
        expect(rules.the_weapons).to eq([:Rock, :Paper, :Scissors])
      end
    end
  end


end
