feature 'Choosing a move in the game' do
  scenario 'confirms which move chosen by player' do
    visit '/'
    fill_in :player_name, with: 'Masha'
    click_button 'Submit'
    choose("move", with: 'Rock')
    click_button 'Submit'
    expect(page).to have_content "Your move: Rock"
    expect(page).not_to have_content "Your move: Paper"
  end
end
