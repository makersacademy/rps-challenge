require 'user'

describe User do
  let(:god) {double :god}
  subject(:user) {described_class.new("Veronica")}
  describe "#name" do

    it "should return the user name" do
      expect(user.name).to eq "Veronica"
    end
  end

  describe '#choise' do
    it "should choose rock" do
      expect(subject.choise). to eq "Rock"
    end
  end
end
