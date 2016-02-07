require_relative '../lib/player'

describe Player do
  subject(:player) {described_class.new}


  describe '#select_rps' do
    it "sets an rps for the player" do
      expect {player.select_rps(:rock)}.to change(player, :c_rps).from(nil).to(:rock)
    end

    it "raises an error if you send wrong choice" do
        error = "Wrong choice, select one of the following:#{Player::CHOICES}"
        expect {player.select_rps(:banana)}.to raise_error error
    end
  end

  describe '#reset' do
    it "resets rps" do
      player.reset
      expect(player.c_rps).to eq nil
    end
  end

end
