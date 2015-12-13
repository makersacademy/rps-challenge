# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register name' do
  scenario 'allows user to submit name and see it' do
    visit '/'
      fill_in(:user_name, with: 'Alan')
      click_button('Submit')
      expect(page).to have_content 'Alan vs Computer'
  end
end
