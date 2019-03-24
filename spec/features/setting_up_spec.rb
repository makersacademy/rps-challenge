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
    before do
      register_two_players(player1_name, player2_name)
    end

    scenario 'system asks for two names' do
      expect(page).to have_content("#{player1_name} vs. #{player2_name}")
    end

    scenario 'second player gets a go' do
      click_button 'Rock'
      expect(page).to have_content("#{player2_name}, choose your weapon")
    end
  end

  context 'user selects one player game' do
    before do
      register_one_player(player1_name)
    end

    scenario 'system asks for one name' do
      expect(page).to have_content("#{player1_name} vs. #{computer_name}")
    end


    scenario 'computer takes go for second player' do
      click_button 'Rock'
      expect(page).to have_content "The results are in"
    end
  end
end