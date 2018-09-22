require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1, name: "Bob" }
  let(:player_2) { double :player_2 }
  let(:weapons) { [:rock, :paper, :scissors] }
  let(:player_1_choice) { double player_1_choice }
  let(:player_1_choice) { double player_1_choice }
  let(:weapon_instance) { double :weapon, :beats }
  
  describe "#result" do
    it "displays the result win when rock beats scissors" do
      player_1_choice = :rock
      player_2_choice = :scissors
      expect(game.result(player_1_choice, player_2_choice)).to eq :win
    end

    it "displays the result win when paper beats rocks" do
      player_1_choice = "paper".to_sym
      player_2_choice = "rock".to_sym
      expect(game.result(player_1_choice, player_2_choice)).to eq :win
    end

    it "displays the result win when scissors beats paper" do
      player_1_choice = "scissors".to_sym
      player_2_choice = "paper".to_sym
      expect(game.result(player_1_choice, player_2_choice)).to eq :win
    end

    it "displays the result lost when scissors can not beat rock" do
      player_1_choice = "scissors".to_sym
      player_2_choice = "rock".to_sym
      expect(game.result(player_1_choice, player_2_choice)).to eq :lose
    end

    it "displays the result lost when rock can not beat paper" do
      player_1_choice = "rock".to_sym
      player_2_choice = "paper".to_sym
      expect(game.result(player_1_choice, player_2_choice)).to eq :lose
    end

    it "displays the result lost when paper can not beat scissors" do
      player_1_choice = "paper".to_sym
      player_2_choice = "scissors".to_sym
      expect(game.result(player_1_choice, player_2_choice)).to eq :lose
    end
  end
end
