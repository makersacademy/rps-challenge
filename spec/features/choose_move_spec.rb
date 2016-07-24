feature 'Choose move' do
  scenario 'player can see move list' do
    visit('/')
    fill_in :player_name, with: 'Oggie'
    click_button 'Submit'
    expect(page).to have_content 'Choose your move Oggie:'
  end

  scenario 'player choose her move' do
    visit('/')
    fill_in :player_name, with: 'Oggie'
    click_button 'Submit'
    expect(page).to have_field 'user_move'
  end
end
