
feature 'Entering the name' do
  scenario 'at the start of the game' do
    visit('/')
    fill_in :player_1_name, with: 'Bart'
    click_button 'Submit'
    expect(page).to have_content 'Hello Bart!'
  end
end
