require_relative '../../lib/player'

feature 'signing in' do
  let(:computer_name) { "RPSBot::9000" }
  let(:player1_name) { "Lester Flatt" }
  let(:player2_name) { "Earl Scruggs" }

  scenario 'it asks how many players you want to play with' do
    visit '/'
    expect(page).to have_button(value: 'one_player')
    expect(page).to have_button(value: 'two_player')
  end

  context 'user selects two player game' do
    scenario 'system asks for two names' do
      register_two_players(player1_name, player2_name)
      expect(page).to have_content("#{player1_name} vs. #{player2_name}")
    end

    scenario "player 2 is told to cover their eyes during player 1's go" do
      visit '/'
      click_button value: 'two_player'
      fill_in "player1_name", with: player1_name
      fill_in "player2_name", with: player2_name
      click_button "Let's do this"
      expect(page).to have_content("#{player2_name}, look away")
    end

    scenario 'second player gets a go' do
      visit '/'
      click_button value: 'two_player'
      fill_in "player1_name", with: player1_name
      fill_in "player2_name", with: player2_name
      click_button "Let's do this"
      click_button 'Rock'
      expect(page).to have_content("#{player2_name}, choose your weapon")
    end

    scenario "player 1 is told to cover their eyes during player 2's go" do
      visit '/'
      click_button value: 'two_player'
      fill_in "player1_name", with: player1_name
      fill_in "player2_name", with: player2_name
      click_button "Let's do this"
      click_button 'Rock'
      expect(page).to have_content("#{player1_name}, look away")
    end

  end

  context 'user selects one player game' do
    scenario 'system asks for one name' do
      visit '/'
      click_button(value: 'one_player')
      fill_in "player1_name", with: player1_name
      click_button("Let's do this")
      expect(page).to have_content("#{player1_name} vs. #{computer_name}")
    end

    scenario "no one is told to cover their eyes during player 1's go" do
      visit '/'
      click_button value: 'one_player'
      fill_in "player1_name", with: player1_name
      click_button "Let's do this"
      expect(page).not_to have_content("look away")
    end

    scenario 'computer takes go for second player' do
      visit '/'
      click_button(value: 'one_player')
      fill_in "player1_name", with: player1_name
      click_button("Let's do this")
      click_button 'Rock'
      expect(page).to have_content "The results are in"
    end
  end
end