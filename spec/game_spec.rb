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

  context "#check_result" do
    it { is_expected.to respond_to :check_result }

    it "should return 'WIN' when player won" do
      player_choice = "rock"
      computer_choice = "scissors"
      expect( game.check_result( player_choice, computer_choice )).to eq "WIN!!"
    end

    it "should return 'LOSE' when player lose" do
      player_choice = "rock"
      computer_choice = "paper"
      expect( game.check_result( player_choice, computer_choice )).to eq "LOSE..."
    end

    it "should return 'EVEN' when player and computer chose the same choice" do
      player_choice = "rock"
      computer_choice = "rock"
      expect( game.check_result( player_choice, computer_choice )).to eq "EVEN!!"
    end
  end
end
