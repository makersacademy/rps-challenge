feature 'Player name' do
  scenario 'it welcomes the player' do
    visit('/')
    fill_in :player_name, with: "John"
    click_button 'Submit'
    expect(page).to have_content 'Welcome John'
  end
end