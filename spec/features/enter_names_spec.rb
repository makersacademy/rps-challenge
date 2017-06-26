feature 'Enter name' do
  scenario 'submit name' do
    visit ('/')
    fill_in 'player_1_name', with: 'Player'
    click_button 'Submit'
    expect(page).to have_content 'Player vs CPU'
  end
end
