
describe Game do

  let(:player_one) { double("player_one") }
  let(:player_two) { double("player_one") }
  subject(:game) { described_class.new(player_one, player_two)}

  context "on init" do
    describe "attributes" do
      it {is_expected.to respond_to(:player_one)}
      it {is_expected.to respond_to(:player_two)}
    end
  end

end
