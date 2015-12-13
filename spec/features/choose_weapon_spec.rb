# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Choose weapon' do
  scenario 'allows user to choose a weapon' do
    visit '/'
      fill_in(:user_name, with: 'Alan')
      click_button('Submit')
      select('Rock', from: 'weapon_type')
      click_button('Play')
      expect(page).to have_content 'You chose rock'
  end
end
