require 'game'

RSpec.describe "Game" do

  context "when player selects rock" do
    let(:computer) { double }
    let(:game) { Game.new(:rock, computer) }

    context "and Computer selects scissors" do

      it "returns player as the winner" do
        allow(computer).to receive(:random) { :scissors }

        expect(game.calculate_winner).to eq("player wins!")
      end
    end

    context "and Computer selects paper" do

      it "returns computer as the winner" do
        allow(computer).to receive(:random) { :paper }

        expect(game.calculate_winner).to eq("computer wins!")
      end

    end

    context "and Computer selects rock" do
      it "returns computer as the winner" do
        allow(computer).to receive(:random) { :rock }

        expect(game.calculate_winner).to eq("it's a draw!")
      end
    end
  end

end

describe Computer do
  it "selects either rock or paper or scissors" do
    cpu = Computer.new
    expect(cpu.random).to eq(:rock).or eq(:paper).or eq(:scissors)
  end
end
