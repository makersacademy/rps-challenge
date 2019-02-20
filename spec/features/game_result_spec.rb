feature 'plays game' do
  scenario 'player chooses a move' do
    sign_in
    player_chooses_rock
    expect(page).to have_content('You chose Rock')
  end

  scenario 'returns a move from the computer' do
    sign_in
    player_chooses_rock
    expect(page).to have_content 'The computer chose Paper!'
  end
end
