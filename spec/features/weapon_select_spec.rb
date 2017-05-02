feature 'Selecting Weapon' do
  scenario 'Chooses Rock from radio box' do
    visit ('/')
    fill_in :player_1_name, with: 'Adam'
    click_button 'Submit'
    page.choose "Rock"
    click_button 'Submit'
  end
end
