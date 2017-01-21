require 'game'

describe Game do
  subject(:game) {described_class.new("Ben")}
  describe "#deafults" do
      it {is_expected.to respond_to(:player)}
  end
end
