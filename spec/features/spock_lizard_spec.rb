feature 'spock_lizard' do

    scenario 'the page has a Spock choice' do
      sign_in_and_choose_computer
      click_button('Spock')
      expect(page).to have_content('You selected Spock')
    end

    scenario 'the page has a Lizard choice' do
      sign_in_and_choose_computer
      click_button('Lizard')
      expect(page).to have_content('You selected Lizard')
    end




end
