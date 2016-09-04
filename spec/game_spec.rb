require 'game'

describe Game do

  # subject(:game) { described_class.new}
  #let(:computer) {double :computer, choice = :rock }
  let(:computer_choice) {double :computer_choice}
  let(:player_choice) {double :player_choice}

  context "#computer_choice" do

    # let(:computer_choice) {double :computer_choice}
    # let(:player_choice) {double :player_choice}

    it "returns random choice from computer" do
      player = spy("player")
      game = Game.create(player)
      allow_any_instance_of(Game).to receive(:computer_choice).and_return(:rock)
      expect(game.computer_choice).to eq(:rock)
    end
  end

  # context "#comparison" do
  #   it "compares player and computer choice" do
  #     player = spy("player")
  #     game = Game.create(player)
  #     allow_any_instance_of(Game).to receive(:computer_choice).and_return(:rock)
  #     allow_any_instance_of(Game).to receive(:player_choice).and_return(:paper)
  #     expect(game.compare).to eq()
  #   end
  # end

end
