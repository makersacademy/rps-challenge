require 'game'

describe Game do

  # subject(:game) { described_class.new}
  #let(:computer) {double :computer, choice = :rock }

  context "#computer_choice" do

    let(:computer_choice) {double :computer_choice}

    it "returns random choice from computer" do
      player = spy("player")
      game = Game.create(player)
      allow_any_instance_of(Game).to receive(:computer_choice).and_return(:rock)
      expect(game.computer_choice).to eq(:rock)
    end
  end

end
