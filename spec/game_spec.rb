require 'game'

describe Game do

  subject( :game ){ described_class.new( player, computer ) }
  let( :player ){ double :player_klass }
  let( :computer ){ double :computer_klass }

  context "#check_result" do
    it { is_expected.to respond_to :check_result }

    it "should return 'WIN' when player won" do
      allow( computer ).to receive( :pick ).and_return( "scissors" )
      player_choice = "rock"
      expect( game.check_result( player_choice )).to eq :result_win
    end

    it "should return 'LOSE' when player lose" do
      allow( computer ).to receive( :pick ).and_return( "paper" )
      player_choice = "rock"
      expect( game.check_result( player_choice )).to eq :result_lose
    end

    it "should return 'EVEN' when player and computer chose the same choice" do
      allow( computer ).to receive( :pick ).and_return( "rock" )
      player_choice = "rock"
      expect( game.check_result( player_choice )).to eq :result_even
    end
  end

end
