require 'game'

describe Game do

  let(:player) {double(:player, name: "Digby")}
  let(:player_chooses_rock) {double(:player, name: "Ceasar", weapon_choice: "rock")}
  let(:player_chooses_paper) {double(:player, name: "Chicken", weapon_choice: "paper")}
  let(:player_chooses_scissors) {double(:player, name: "Sir", weapon_choice: "scissors")}
  let(:opponent) {double(:opponent)}
  let(:opponent_chooses_rock) {double(:opponent, weapon_choice: "rock")}
  let(:opponent_chooses_paper) {double(:opponent, weapon_choice: "paper")}
  let(:opponent_chooses_scissors) {double(:opponent, weapon_choice: "scissors")}
  subject(:game) {described_class.new(:player, :opponent)}
  subject(:game_player_wins_with_rock) {described_class.new(player_chooses_rock, opponent_chooses_scissors)}
  subject(:game_player_draws_with_rock) {described_class.new(player_chooses_rock, opponent_chooses_rock)}
  subject(:game_player_loses_with_rock) {described_class.new(player_chooses_rock, opponent_chooses_paper)}
  subject(:game_player_wins_with_paper) {described_class.new(player_chooses_paper, opponent_chooses_rock)}
  subject(:game_player_draws_with_paper) {described_class.new(player_chooses_paper, opponent_chooses_paper)}
  subject(:game_player_loses_with_paper) {described_class.new(player_chooses_paper, opponent_chooses_scissors)}
  subject(:game_player_wins_with_scissors) {described_class.new(player_chooses_scissors, opponent_chooses_paper)}
  subject(:game_player_draws_with_scissors) {described_class.new(player_chooses_scissors, opponent_chooses_scissors)}
  subject(:game_player_loses_with_scissors) {described_class.new(player_chooses_scissors, opponent_chooses_rock)}

  it "initializes with a player" do
    expect(game.player).to eq :player
  end

  it "initializes with an opponent" do
    expect(game.opponent).to eq :opponent
  end

  describe "#Gameplay Rock" do
    it "Player rock beats AI scissors" do
      expect(game_player_wins_with_rock.outcome).to eq :player_wins
    end
    it "Player rock draws to AI rock" do
      expect(game_player_draws_with_rock.outcome).to eq :player_draws
    end
    it "Player rock loses to AI paper" do
      expect(game_player_loses_with_rock.outcome).to eq :player_loses
    end
  end

  describe "#Gameplay Paper" do
    it "Player paper beats AI rock" do
      expect(game_player_wins_with_paper.outcome).to eq :player_wins
    end
    it "Player paperdraws to AI paper" do
      expect(game_player_draws_with_paper.outcome).to eq :player_draws
    end
    it "Player paper loses to AI scissors" do
      expect(game_player_loses_with_paper.outcome).to eq :player_loses
    end
  end

  describe "#Gameplay Scissors" do
    it "Player scissors beats AI paper" do
      expect(game_player_wins_with_scissors.outcome).to eq :player_wins
    end
    it "Player scissors draws to AI scissors" do
      expect(game_player_draws_with_scissors.outcome).to eq :player_draws
    end
    it "Player scissors loses to AI rock" do
      expect(game_player_loses_with_scissors.outcome).to eq :player_loses
    end
  end
end
