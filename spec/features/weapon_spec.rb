# 2. I would like to choose my weapon

feature 'Select' do
  scenario 'Weapon' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Goose: Rock"
  end
end
