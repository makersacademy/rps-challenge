feature 'Player selects action' do
  # should I test for individual cases?
  ['paper', 'scissors', 'rock'].each do |action|

    scenario "Player 1 selection of #{action} appears on play page" do
      visit('/')
      choose('single-player')
      choose('normal')
      click_on('Start game')

      fill_in 'player1_name', with: 'Player 1'
      click_on 'Start game'

      choose "p1-#{action}"

      click_on 'Play'
      expect(page).to have_content("#{action}")
    end
  end
end
