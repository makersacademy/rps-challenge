require_relative 'spec_helper'
require 'game'

describe Game do
  let(:player) { double(:player, :name => "Bukowski") }
  subject { described_class.new(player)}

  it "has a player" do
    expect(subject.player_1).to eq player
  end

  describe "#decide_winner" do

    def set_up_winner_test(player_1_choice, player_2_choice)
      @win_player = double(:player, :name => "Bukowski", :weapon => player_1_choice)
      @game = described_class.new(@win_player)
      allow(@game.player_2).to receive(:weapon).and_return(player_2_choice)
    end

    it "states winner is p1 if p1 chose rock, p2 chose scissors" do
      set_up_winner_test("rock", "scissors")
      expect(@game.winner).to eq @win_player
    end

    it "states winner is p1 if p1 chose scissors, p2 chose paper" do
      set_up_winner_test("scissors", "paper")
      expect(@game.winner).to eq @win_player
    end

    it "states winner is p1 if p1 chose paper, p2 chose rock" do
      set_up_winner_test("paper", "rock")
      expect(@game.winner).to eq @win_player
    end

    it "states winner is p2 if p1 chose rock, p2 chose paper" do
      set_up_winner_test("rock", "paper")
      expect(@game.winner).to eq @game.player_2
    end

    it "states winner is p2 if p1 chose paper, p2 chose scissors" do
      set_up_winner_test("paper", "scissors")
      expect(@game.winner).to eq @game.player_2
    end

    it "states winner is p2 if p1 chose scissors, p2 chose rock" do
      set_up_winner_test("scissors", "rock")
      expect(@game.winner).to eq @game.player_2
    end

    it "states draw if both players chose same" do
      set_up_winner_test("rock", "rock")
      expect(@game.winner).to eq "Draw!"
    end
  end
end

=begin
def set_up_winner_test(player_1_choice, player_2_choice)
  @win_player = double(:player, :name => "Bukowski", :weapon => player_1_choice)
  @game = described_class.new(@win_player)
  allow(@game).to receive(:player_2_choice).and_return(player_2_choice)
end

it "states winner is 1 if p1 chose rock, p2 chose scissors" do
  set_up_winner_test("rock", "scissors")
  expect(@game.decide_winner).to eq @win_player
end
=end
