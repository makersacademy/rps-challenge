feature 'player can start the match' do
  scenario 'FIGHT!!! button is visible' do
    name_and_weapon
    click_button 'fight'
    expect(page).to have_content "You put rock the computer chose"
  end
end
