# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Show result' do
  scenario 'shows the game\'s result' do
    visit '/'
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      fill_in(:user_name, with: 'Alan')
      click_button('Submit')
      select('Rock', from: 'weapon_type')
      click_button('Play')
      expect(page).to have_content 'It\'s a draw'
  end
end
