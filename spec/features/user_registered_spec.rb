require 'app'

describe RPS do

  before do
    visit '/'
  end

  feature 'User registered' do
    scenario 'displays the username used for registering'do
      fill_in 'username', with: 'marketeer'
      click_button 'Register'
      expect(page).to have_content 'Your username is: marketeer'
    end
  end

end
