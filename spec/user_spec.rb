require 'user'

describe User do
  let(:god) {double :god}
  subject(:user) {described_class.new("Veronica")}
  describe "#name" do

    it "should return the user name" do
      expect(user.name).to eq "Veronica"
    end
  end
end
