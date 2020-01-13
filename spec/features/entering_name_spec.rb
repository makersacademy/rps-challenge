feature "Entering player's name" do
  scenario "player can enter their name" do
    visit '/'
    fill_in :player_name, with: 'Masha'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock-Paper-Scissors, Masha'
  end
end
