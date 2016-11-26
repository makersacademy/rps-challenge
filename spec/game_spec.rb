require 'game'

describe Game do

  subject( :game ){ described_class.new( player, random_number_klass ) }
  let( :player ){ double :player }
  let( :random_number_klass ){ double :random_number_klass }

  before( :each ) do
    allow( random_number_klass ).to receive( :new )
  end

  context "#computer_choice" do
    it { is_expected.to respond_to :computer_choice }

    it "should return one of rock/paper/scissors" do
      allow( game ).to receive( :rock_paper_scissors? ).and_return( "rock" )
      expect( game.computer_choice ).to eq "rock"
    end
  end

  context "#check_result" do
    it { is_expected.to respond_to :check_result }

    it "should return 'WIN' when player won" do
      allow( game ).to receive( :rock_paper_scissors? ).and_return( "scissors" )
      player_choice = "rock"
      game.computer_choice
      expect( game.check_result( player_choice )).to eq "YOU WIN!!"
    end

    it "should return 'LOSE' when player lose" do
      allow( game ).to receive( :rock_paper_scissors? ).and_return( "paper" )
      player_choice = "rock"
      game.computer_choice
      expect( game.check_result( player_choice )).to eq "YOU LOSE..."
    end

    it "should return 'EVEN' when player and computer chose the same choice" do
      allow( game ).to receive( :rock_paper_scissors?).and_return( "rock" )
      player_choice = "rock"
      game.computer_choice
      expect( game.check_result( player_choice )).to eq "EVEN!!"
    end
  end

  context "#rock_paper_scissors?" do
    it { is_expected.to respond_to :rock_paper_scissors? }

    it "should return rock when random number is 1" do
      allow( @random_number ).to receive( :generator ).and_return( 1 )
      expect( game.rock_paper_scissors? ).to eq "rock"
    end

    it "should return paper when random number is 2" do
      allow( @random_number ).to receive( :generator ).and_return( 2 )
      expect( game.rock_paper_scissors? ).to eq "paper"
    end

    it "should return scissors when random number is 3" do
      allow( @random_number ).to receive( :generator ).and_return( 3 )
      expect( game.rock_paper_scissors? ).to eq "scissors"
    end
  end

end
