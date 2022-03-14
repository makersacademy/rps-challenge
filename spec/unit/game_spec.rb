require 'game'

describe Game do
  #initialize a Game instance for use in our tests
  game = Game.new("Rock")

  it "should take the users choice as a parameter and store it" do
    expect(game.users_choice).to eq("Rock")
  end

  describe "making a random choice for the computer" do
    it "should respond to a method called #generate_computer_choice" do
      expect { game.generate_computer_choice }.not_to raise_error
    end

    it "should return the value of 'Rock' when rand is 0" do
      allow(game).to receive(:rand).and_return(0)
      expect(game.generate_computer_choice).to eq("Rock")
    end 

    it "should return the value of 'Paper' when rand is 1" do
      allow(game).to receive(:rand).and_return(1)
      expect(game.generate_computer_choice).to eq("Paper")
    end 

    it "should return the value of 'Paper' when rand is 2" do
      allow(game).to receive(:rand).and_return(2)
      expect(game.generate_computer_choice).to eq("Scissors")
    end 

  end
end