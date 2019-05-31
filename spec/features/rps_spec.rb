feature 'Enter player name' do
  scenario 'Can submit a form to check name and display on screen' do
    visit('/')
    fill_in 'name', with: 'Player1'
    click_button 'Submit'
    expect(page).to have_content("Player1")
  end
end
