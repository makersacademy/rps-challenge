require 'game'

describe Game do

  subject( :game ){ described_class.new( player ) }
  let( :player ){ double :player }

  it { is_expected.to respond_to :random_number }

  it "should create random number" do
    expect( game.random_number ).to be_kind_of( Integer )
  end

  context "#computer_choice" do
    it { is_expected.to respond_to :computer_choice }

    it "should return rock when random number is 1" do
      allow( game ).to receive( :random_number ).and_return( 1 )
      expect( game.computer_choice ).to eq "rock"
    end

    it "should return rock when random number is 2" do
      allow( game ).to receive( :random_number ).and_return( 2 )
      expect( game.computer_choice ).to eq "paper"
    end

    it "should return rock when random number is 3" do
      allow( game ).to receive( :random_number ).and_return( 3 )
      expect( game.computer_choice ).to eq "scissors"
    end
  end

end
