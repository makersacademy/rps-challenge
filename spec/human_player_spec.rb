require "human_player"

describe HumanPlayer do

  subject do
    HumanPlayer.new("Sarah")
  end

  it "has a name" do
    expect(subject.name).to eq("Sarah")
  end

  it "raises an error when name is not entered" do
    expect{HumanPlayer.new("")}.to raise_error "You did not enter a name. Please enter your name."
  end

  it "can return a throw" do
    subject.set_throw(:rock)
    expect(subject.return_throw).to eq(:rock)
  end

  it "counts the number of wins" do
    subject.win!
    subject.win!
    expect(subject.wins).to eq(2)
  end



  # it "can choose rock as an option" do
    # expect(subject.set_throw).to eq "Rock"
    # rock = HumanPlayer.new.set_throw("Rock")
    # expect(subject.rock).to eq "Rock"
  # end

  # it "can choose paper as an option" do
  # end

  # it "can choose scissors as an option" do
  # end

  # it "raises error if rock, paper or scissors is not selected" do
  #   throw = HumanPlayer.new.throw("Rock", "Paper", "Scissors")
  #   expect{subject.throw}.to raise_error "You did not choose a valid throw option. Please choose among rock, paper, scissors."
  # end

end