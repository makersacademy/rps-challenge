feature 'Choosing a move in the game' do
  scenario 'confirms which move chosen by player' do
    sign_in_and_play
    choose("move", with: 'Rock')
    click_button 'Submit'
    expect(page).to have_content "Your move: Rock"
    expect(page).not_to have_content "Your move: Paper"
  end
end
