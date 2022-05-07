feature 'Enter name' do
  scenario 'player enter their name' do
    visit('/')
    fill_in :player_name, with: "Erlantz"
    click_button 'Submit'
    expect(page).to have_content "Today has come to play...: ERLANTZ!!!"
  end
end