require 'app'

describe RPS do

  before do
    visit '/'
  end

  feature 'Register' do
    scenario 'invites marketeer to introduce his username' do
      expect(page).to have_content 'Please introduce your username:'
    end
  end

  feature 'Register' do
    scenario 'allows the marketeer to register his name before playing' do
      fill_in 'username', with: 'marketeer'
      click_button 'Register'
      expect(page).to have_content 'Your username is: marketeer'
    end
  end

end
