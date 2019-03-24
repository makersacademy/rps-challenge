require_relative '../../lib/player'

feature 'other player is told to look away in 2 player game' do
  let(:computer_name) { "RPSBot::9000" }
  let(:player1_name) { "Lester Flatt" }
  let(:player2_name) { "Earl Scruggs" }

  context "user selects two player game" do
    before do
      register_two_players(player1_name, player2_name)
    end

    scenario "player 2 is told to look away during player 1's go" do
      expect(page).to have_content("#{player2_name}, look away")
    end

    scenario "player 1 is told to look away during player 2's go" do
      click_button 'Rock'
      expect(page).to have_content("#{player1_name}, look away")
    end
  end

  context "user selects one player game" do
    scenario "no one is told to look away during player 1's go" do
      register_one_player(player1_name)
      expect(page).not_to have_content("look away")
    end
  end
end
