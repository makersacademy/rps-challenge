require 'random_player'

RSpec.describe RandomPlayer do

  it "should have the name RPSLSbot" do
    expect(subject.name).to eq "RPSLSbot"
  end

  it "should choose randomly from the possible moves" do
    srand(0)
    expect(subject.choose_move).to eq "Spock"
  end

end
