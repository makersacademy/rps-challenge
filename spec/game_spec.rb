describe Game do
  it 'selects a move' do
    subject.computer_choice
    expect(["Rock", "Paper", "Scissors"]).to include(subject.computer_move)
  end

  it 'computer wins a game' do
    srand(67809)
    subject.player_move("Scissors")
    subject.computer_choice
    expect(subject.game_result).to eq("Computer wins!")
  end
end
