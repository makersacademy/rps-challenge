feature 'enter name' do
  scenario 'submit name' do 
    visit('/')
    fill_in :player_name, with: 'Toby'
    click_button 'Submit'
    expect(page).to have_content "Welcome to the game Toby"
  end
end