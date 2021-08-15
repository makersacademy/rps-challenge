require_relative "../../lib/winner"

describe Winner do
let(:subject) { Winner.new("Rock", "Paper") }

  describe "#initialize" do
    it "should initialize with player choice and computer choice" do
      expect(subject).to have_attributes(:player_choice => "Rock", :computer_choice => "Paper")
    end
  end

  # describe "#winner" do
  #   it "should be able to make choice of rock, paper or scissors" do
  #     expect(["Rock", "Paper", "Scissors"].include?(subject.choose)).to eq(true)
  #   end
  # end


end