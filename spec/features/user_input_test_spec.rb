  require "capybara/rspec"

  feature 'Enter name' do
    scenario 'User enters their name' do
      visit('/')
      fill_in('Player Name', with: 'Ike')
      click_button('submit')
      expect(page).to have_content 'Ike'
    end
  end
