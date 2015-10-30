require 'capybara'

  feature 'registers player name' do

    scenario 'asks to enter name' do

      visit('/')
      expect(page).to have_content('Please enter your name:')
      fill_in('Player_name', with: 'SuperMarketer')
      click_button('Submit')
      expect(page).to have_content('SuperMarketer')

    end

  end
