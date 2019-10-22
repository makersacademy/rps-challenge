require 'result'

describe 'who_wins' do
  it "Announces it's a tie when both moves are the same" do
    opponent = Opponent.new
    opponent.player_weapon('paper')
    opponent.opponent_move = 'paper'
    expect(opponent.who_wins).to eq("It's a tie!")
  end

  it "Correctly announces when player is the winner" do
    opponent = Opponent.new
    opponent.player_weapon('paper')
    opponent.opponent_move = 'rock'
    expect(opponent.who_wins).to eq("You win!")
  end

  it "Correctly announces when computer is the winner" do
    opponent = Opponent.new
    opponent.player_weapon('paper')
    opponent.opponent_move = 'scissors'
    expect(opponent.who_wins).to eq("You lose!")
  end
end
