require 'computer'
require 'game'

describe Computer do
  before(:each) do
    @player = double('player')
    @game = Game.new(@player)
  end 
  context "Computer plays rock" do
    before(:each) do
      @comp = double('comp')
      allow(@comp).to receive(:play).and_return("Rock")
    end
    it "rock beats scissors" do 
      @comp.play
      p play_scissors

      expect(@game.instance_variable_get).to eq "Computer Wins"
    end
    it "rock draws rock" do 
      @comp.play
      expect(play_rock).to eq "Draw"
    end
  end

  context "Computer plays paper" do
    before(:each) do
      @comp = double('comp')
      allow(@comp).to receive(:play).and_return("Paper")
    end
    it "paper beats rock" do 
      @comp.play
      expect(play_rock).to eq "Computer Wins"
    end
    it "paper draws paper" do
      @comp.play
      expect(play_paper).to eq "Draw"
    end
  end

  context "Computer plays scissors" do
    before(:each) do
      @comp = double('comp')
      allow(@comp).to receive(:play).and_return("Scissors")
    end
    it "scissors beats paper" do 
      @comp.play
      expect(play_paper).to eq "Computer Wins"
    end
    it "scissors draws scissors" do
      @comp.play
      expect(play_scissors).to eq "Draw"
    end
  end
end