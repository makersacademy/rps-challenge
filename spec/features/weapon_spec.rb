# 2. I would like to choose my weapon

feature 'Weapon' do
  scenario 'Select' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Goose: Rock"
  end
end
