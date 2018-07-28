feature 'Starts the game' do
  scenario 'should let the user play a game' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Go!'
    click_button "LET ME AT 'EM!"
    expect(page).to have_content "Chose Your Weapon"
  end
end
