require "player"

describe Player do

  context "#initialize" do 
    it "should have a name" do
      mike = Player.new("Mike")
      expect(mike.name).to eq "Mike"
    end

    it "should have zero points to start the game" do
      mike = Player.new
      expect(mike.points). to eq ::START_POINTS
    end
  end  

  context "#make_move" do
    it "should be able to choose between R,P & S" do
      expect(subject.make_move("Rock")).to eq "rock"
    end
  end
end
