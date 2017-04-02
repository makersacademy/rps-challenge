def sign_in_and_play
      visit '/'
      fill_in :player, with: 'Will'
      click_button 'Submit Name'
end
