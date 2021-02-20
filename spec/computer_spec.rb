require './lib/computer.rb'


describe Computer do

  it "should provide a computer move in the game" do
    allow(subject).to receive(:result).and_return("rock")
    expect(subject.result).to eq "rock"
  end

end
