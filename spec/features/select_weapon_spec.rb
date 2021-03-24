feature 'select weapon' do
  scenario 'user selects weapon' do
    sign_in_and_play
    fill_in "player_weapon", :with => "rock"
    click_on 'Your Weapon'
    expect(page).to have_content "You..."
  end
end
