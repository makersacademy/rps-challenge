require 'rps_results'

describe Rps_results do 

  let (:player) { "Scissors" }
  let (:computer) { "Paper" }

  it 'should state who won the game' do 
    expect(subject).to respond_to(:winner)
  end 

  it 'should have returns that player won' do 
    expect(subject.winner(player, computer)).to eq "You win!"
  end

  it "should have returned a draw" do 
    expect(subject.winner("Paper", "Paper")).to eq "Its a draw"
  end

end 