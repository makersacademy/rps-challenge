require 'game'

describe Game do

  subject(:game){described_class.new(player_1, player_2)}
  let(:player_1){double(:player_1, choice: :scissors, name: "Dave")}
  let(:player_2){double(:player_2, choice: :rock, name: "The Computer")}
  let(:player_3){double(:player_3, choice: :rock, name: "John")}



  describe '#play' do

    it 'evaluates a win' do
      expect(game.play).to eq "The Computer wins!"
    end

    it 'evaluates a draw' do
      game = Game.new(player_2, player_3)
      expect(game.play).to eq "It's a draw!"
    end
  end

  describe '#player_1_choice' do

    it 'shows player 1s final choice' do
      game.play
      expect(game.player_1_choice).to eq :scissors
    end
  end

  describe '#player_2_choice' do

    it 'shows player 2s final choice' do
      game.play
      expect(game.player_2_choice).to eq :rock
    end
  end

  describe '#final_result' do

    it "shows the game's final result" do
      game.play
      expect(game.final_result).to eq "The Computer wins!"
    end
  end
end