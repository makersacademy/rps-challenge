require 'game'

describe Game do
  subject(:game) {described_class.new( :paper)}
  subject(:game_rock) {described_class.new( :rock)}




describe " #instance" do
  it "refers to an instance" do
    expect(Game.instance).to be_an_instance_of(Game)
  end
end

describe " #create" do
    it "creates an instance of Game" do
      expect(Game.create(:paper)).to be_an_instance_of(Game)
    end

  end



  describe " #result" do

    it " #tie returns true if the player and the computer chose the same attack" do
      expect(game_rock.tie?(:rock)).to eq true

    end


    it "direct to draw if both player and computer chose rock" do
      expect(game_rock.result(:rock)).to eq :draw
    end

    it "direct to win if player chose paper, chomputer chose rock" do
      expect(game_rock.result(:paper)).to eq :win
    end

    it "direct to loose if player chose scissors, chomputer chose rock" do
      expect(game_rock.result(:scissors)).to eq :loose
    end
  end
end
