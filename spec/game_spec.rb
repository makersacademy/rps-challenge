require './app/game' 

describe  Game do 
  # let(:game) {Game.new player:, computer:}
  it {is_expected.to respond_to :player}

  it {is_expected.to respond_to :computer}

  it 'should compare the picks by the player and computer' do
    tie = subject.tie 'paper','paper' 
    expect(tie).to eq "It's a tie"
  end

    it "should show the computer winning" do
      comp_win = subject.comp_win "rock", "paper"
      expect(comp_win).to eq "computer wins!!! paper wraps rock"
    end

    it "should show the player winning" do 
      player_win = subject.player_win "scissors", "paper"
      expect(player_win).to eq "player wins!!! scissors cuts paper"
    end


end