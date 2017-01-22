require 'game'

describe Game do

  subject(:game) { described_class.new(:paper) }
  subject(:game_paper) { described_class.new(:paper) }

  describe " #instance" do
    it "instance of the class" do
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end

  describe " #create" do
    it "creates an instance of Game" do
      expect(Game.create(:paper)).to be_an_instance_of(Game)
    end
  end

  context " #result of the game" do

    describe '#tie' do

    it "returns true when both the player and computer choose the same weapon" do
      expect(game_paper.tie?(:paper)).to eq true
    end

     it "directs to tie when both the player and computer choose paper" do
       expect(game_paper.result(:paper)).to eq :tie
     end
   end

     it "directs to win when player chooses scissors, computer chooses paper" do
       expect(game_paper.result(:scissors)).to eq :win
     end

     it "directs to loose when player chooses rock, computer chooses paper" do
       expect(game_paper.result(:rock)).to eq :defeat
     end



  end

end
