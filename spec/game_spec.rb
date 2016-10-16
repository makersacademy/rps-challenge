require 'game'
xdescribe Game do

  subject(:game) {described_class.new}

  it "accepts the choose method" do
    expect(game).to respond_to :choose
  end

  it "expects computer to choose rock, paper, or scissors" do
    expect(computer_choice).to eq
  end

end
