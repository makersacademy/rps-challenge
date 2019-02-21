feature 'plays game' do
  scenario 'player chooses a move' do
    sign_in
    player_chooses_rock
    expect(page).to have_content('You chose Rock')
  end

  scenario 'returns a move from the computer' do
    game = Game.new
    allow(game).to receive(:computer_choice).and_return("Paper")
    # let(game.computer_move) eq("Paper")
    sign_in
    player_chooses_rock
    expect(page).to have_content 'The computer chose Paper!'
  end

  # scenario 'computer chooses paper' do
  #   sign_in
  #   player_chooses_rock
  #   game = double('game')
  #
  #   expect(subject.computer_move).to eq("Paper")
  # end
end
