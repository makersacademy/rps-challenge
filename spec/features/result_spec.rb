require_relative '../spec_helper.rb'

  feature 'Result'do
    scenario 'view results'do
      visit('/')
      fill_in :player_name, with: 'Bob'
      click_button 'GO!'
      choose('rock')
      click_button('Submit')
      expect(page).to have_content('You chose rock')
      page.assert_text(/Computer chose (rock|paper|scissors)/)
      page.assert_text(/You (win|lose|draw)/)
    end
end
