require 'game'

describe Game do
  subject { Game.new("Mel", "Rock") }
  let(:player_paper) { Game.new("Mel", "Paper") }

  it "initialises with the player name" do
    expect(subject.player_1_name).to eq "Mel"
  end

  it "initialises with the player's move" do
    expect(subject.player_1_move).to eq "Rock"
  end

  it "allows the computer to make a random move" do
    my_array = ["Rock", "Paper", "Scissors"]
    expect(my_array).to include subject.computer
    # expect(subject.computer).to eq("Rock" || "Paper" || "Scissors")
  end

  it "calculates the win for the computer" do
    # After setting seed srand(4), rand(3) will output the third (index 2) element in the array.
    srand(4)
    # in the following line rand(3) is called and thanks to srand(4) we know it will return 2.
    allow(subject).to receive(:computer_move)
    expect(subject.play).to eq "Computer wins!"
  end

end
