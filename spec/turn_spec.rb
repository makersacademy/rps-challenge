require 'turn'
describe Turn do
  before(:each) do
    @player1 = double("player 1")
    @player2 = double("player 2")
    @test = Turn.new(@player1, @player2)
  end

  describe "#change" do
    it "can change turn" do
      expect(@test.now).to eq(@player1)
      @test.change
      expect(@test.now).to eq(@player2)
    end
  end

  describe "#return" do
    it "starts on the first argument's turn" do
      expect(@test.now).to eq(@player1)
    end
    it "returns the player whose turn it is" do
      @test.change
      expect(@test.now).to eq(@player2)
    end
  end
end
