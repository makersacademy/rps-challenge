describe Game do
  it 'selects a move' do
    subject.computer_choice
    expect(["Rock", "Paper", "Scissors"]).to include(subject.computer_choice)
  end

  it 'computer wins a game' do
    srand(2)
    subject = Game.new
    subject.player_choice("Scissors")
    subject.computer_choice
    expect(subject.game_result).to eq("Computer wins!")
  end
end
