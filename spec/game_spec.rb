require 'game'

describe Game do

  subject( :game ){ described_class.new( player ) }
  let( :player ){ double :player }

  it "should show rock when player choose rock" do
    choice = "rock"
    expect( game.show( choice ) ).to eq "rock"
  end

  it "should show paper when player choose paper" do
    choice = "paper"
    expect( game.show( choice ) ).to eq "paper"
  end

  it "should show scissors when player choose scissors" do
    choice = "scissors"
    expect( game.show( choice ) ).to eq "scissors"
  end

end
