require 'game'

describe Game do

  subject(:game) {described_class.new(player1,computer,round_klass)}
  let(:round_klass) {double(:round_klass, new: round1)}
  let(:player1) {double(:player, name: "Simon")}
  let(:computer) {double(:computer)}
  let(:round1) {double(:round, winner: "Simon", player1: player1, player2: computer)}


  before do
    allow(player1).to receive(:choose).and_return(:rock)
    allow(computer).to receive(:choose).and_return(:scissors)
    allow(round1).to receive(:player1_turn).and_return(:rock)
    allow(player1).to receive(:name).and_return("Simon")
    allow(computer).to receive(:name).and_return("HAL")
  end

  describe '1 #new_round' do
    it '1.0 creates a new instance of round' do
      game.new_round
      expect(game.rounds).not_to be_empty
    end
  end

  describe "2 #player1_play" do
    it '2.0 calls the player1_turn method in the round' do
      game.new_round
      expect(round1).to receive(:player1_turn)
      game.player1_play("Rock")
    end
  end

  describe "3 #player1_play" do
    it '4.0 calls the player2_turn method in the round' do
      game.new_round
      expect(round1).to receive(:player2_turn)
      game.player2_play
    end
  end


  describe "4 #score" do
    it "4.0 shows player1 score" do
      expect(game.score[:Simon]).to eq 0
    end

    it "4.1 shows player2 score" do
      expect(game.score[:HAL]).to eq 0
    end
  end

  describe "5 #update_score" do
    it "5.1 updates the relevant score" do
      allow(round1).to receive(:winner).and_return("Simon")
      game.new_round
      expect{game.update_score}.to change{game.score[:Simon]}.by 1
    end
  end

  describe "6 #game_over?" do
    it "6.1 informs a player when the game is over" do
      allow(round1).to receive(:winner).and_return("Simon")
      3.times do
        game.new_round
        game.update_score
      end
      expect(game.game_over).to be true
    end
  end
end
