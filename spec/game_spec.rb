require "game.rb"

describe Game do
  let(:player) { double('player') }
  let(:cpu) { double('cpu') }
  subject(:game) { described_class.new(player, cpu) }

  describe "#result" do

    context "player selects rock" do
      it "should evaluate to a win if cpu selects scissors" do
        allow(player).to receive(:select_move) { :rock }
        allow(cpu).to receive(:roll_attack) { :scissors }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :win
      end

      it "should evaluate to a loss if cpu selects paper" do
        allow(player).to receive(:select_move) { :rock }
        allow(cpu).to receive(:roll_attack) { :paper }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :lose
      end

      it "should evaluate to a draw if cpu selects rock" do
        allow(player).to receive(:select_move) { :rock }
        allow(cpu).to receive(:roll_attack) { :rock }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :draw
      end

    end

    context "player selects paper" do
      it "should evaluate to a win if cpu selects rock" do
        allow(player).to receive(:select_move) { :paper }
        allow(cpu).to receive(:roll_attack) { :rock }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :win
      end

      it "should evaluate to a loss if cpu selects scissors" do
        allow(player).to receive(:select_move) { :paper }
        allow(cpu).to receive(:roll_attack) { :scissors }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :lose
      end

      it "should evaluate to a draw if cpu selects paper" do
        allow(player).to receive(:select_move) { :paper }
        allow(cpu).to receive(:roll_attack) { :paper }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :draw
      end

    end

    context "player selects scissors" do
      it "should evaluate to a win if cpu selects paper" do
        allow(player).to receive(:select_move) { :scissors }
        allow(cpu).to receive(:roll_attack) { :paper }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :win
      end

      it "should evaluate to a loss if cpu selects rock" do
        allow(player).to receive(:select_move) { :scissors }
        allow(cpu).to receive(:roll_attack) { :rock }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :lose
      end

      it "should evaluate to a draw if cpu selects scissors" do
        allow(player).to receive(:select_move) { :scissors }
        allow(cpu).to receive(:roll_attack) { :scissors }
        expect(game.result(player.select_move, cpu.roll_attack)).to eq :draw
      end

    end

  end
end
