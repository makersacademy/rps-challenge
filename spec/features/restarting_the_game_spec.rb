require_relative '../../lib/player'

feature "restarting the game" do
  let(:player1_name) { "Lester Flatt" }
  let(:player2_name) { "Earl Scruggs" }

  context "after completing a round" do
    context "in one player mode" do
      scenario "the user can choose to play another round" do
        register_one_player(player1_name)
        click_button 'Rock'
        expect(page).to have_link('Play again?', :href => '/player-1')
      end

      scenario "the user has the option of picking new players" do
        register_one_player(player1_name)
        click_button 'Rock'
        expect(page).to have_link('Change players?', :href => '/')
      end
    end

    context "in two player mode" do
      scenario "the users can choose to play another round" do
        register_two_players(player1_name, player2_name)
        click_button 'Rock'
        click_button 'Rock'
        expect(page).to have_link('Play again?', :href => '/player-1')
      end

      scenario "the users have the option of picking new players" do
        register_two_players(player1_name, player2_name)
        click_button 'Rock'
        click_button 'Rock'
        expect(page).to have_link('Change players?', :href => '/')
      end
    end
  end
end
