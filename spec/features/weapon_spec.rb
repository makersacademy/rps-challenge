# 2. I would like to choose my weapon

feature 'Select' do
  scenario 'Weapon' do
    visit '/'
    fill_in :player_name, with: 'Goose'
    click_button 'Submit'
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Goose: Rock"
  end
end
