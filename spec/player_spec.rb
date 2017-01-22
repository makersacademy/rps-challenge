require 'player'

describe Player do
  subject(:player) {described_class.new(:name)}
  let(:name) {double :name}

  describe 'defaults' do
    it {is_expected.to respond_to(:name)}
  end

  describe "#status_change" do
    it {is_expected.to respond_to(:status_change)}
    it {is_expected.to respond_to(:status)}
    context "if the player wins" do
      it "changes player status to win" do
        player.status_change(:win)
        expect(player.status).to eq :win
      end
    end
    context "if the player draws" do
      it "changes players status to draw" do
        player.status_change(:draw)
        expect(player.status).to eq :draw
      end
    end
    context "if the player loses" do
      it "changes players status to lose" do
        player.status_change(:lose)
        expect(player.status).to eq :lose
      end
    end
  end


  describe "reset" do
    it "changes the win and draw status" do
      player.reset
      expect(player.status).to eq nil
    end
  end
end
