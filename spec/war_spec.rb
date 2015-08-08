require "war"

describe War do

  it "can decide a winner" do
    expect(subject).to respond_to(:decide_winner).with(2).arguments
  end

  it "chooses :paper as a winner over :rock" do
    subject.weapons_available(5)
    expect(subject.decide_winner("rock", "paper")).to eq :player_2_win
  end

  it "chooses :lizard as a winner over :spock" do
    subject.weapons_available(5)
    expect(subject.decide_winner("spock", "lizard")).to eq :player_2_win
  end

  it "shows a draw when drawn" do
    subject.weapons_available(3)
    expect(subject.decide_winner("paper","paper")).to eq :draw
  end

  it "converts weapons to numbers" do
    expect(subject).to respond_to(:weapon_to_number).with(1).argument
  end

  it "converts :rock to 1" do
    expect(subject.weapon_to_number("rock")).to eq 1
  end

end
