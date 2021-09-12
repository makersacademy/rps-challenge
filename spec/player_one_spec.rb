require 'player_one'

describe Player_one do 

  let (:choice)  {["Rock", "Paper", "Scissors"].sample}

  describe '#makes_move' do 
    it "should choose rock, paper or scissors" do 
      expect(subject.move(choice)).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
  

end
