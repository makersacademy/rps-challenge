require 'computer_player'

describe Computer_Player do
  subject(:computer_player) { Computer_Player.new("Computer") }

  it "has a name" do
    expect(computer_player.name).to eq("Computer")
  end

  it "#returns rock, paper or scissors" do
    possible_moves = ["Rock", "Paper", "Scissors"]
    computer_player.move
    expect(possible_moves).to include(computer_player.selected_move)
  end
end
