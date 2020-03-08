require 'game_helper'
describe'#decision' do
  
  it 'there is draw' do
    user_move, opponent_move = :rock, :rock
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :draw
    user_move, opponent_move = :paper, :paper
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :draw
    user_move, opponent_move = :scissors, :scissors
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :draw
  end

  it'user wins' do
    user_move, opponent_move = :rock, :scissors
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :win
    user_move, opponent_move = :paper, :rock
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :win
    user_move, opponent_move = :scissors, :paper
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :win
  end
  it'user lose' do
    user_move, opponent_move = :scissors, :rock
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :lose
    user_move, opponent_move = :rock, :paper
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :lose
    user_move, opponent_move = :paper, :scissors
    expect(Gamehelper.decision(user_move, opponent_move)).to eq :lose
  end

end
