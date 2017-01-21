feature "FEATURE: Choose move" do
  context "Two player" do
    before(:each) do
      play_two_player
    end
    scenario "player 1 can choose their move" do
      choose("p1_choice", {:option => "lizard"})
      click_button('p1_move')
      p1_hider_class = page.find('#p1_move_hider')[:class].include?('hidden-xs-up')
      expect(p1_hider_class).to be false
    end
    scenario "player 2 can choose their move" do
      choose("p1_choice", {:option => "lizard"})
      click_button('p1_move')
      choose("p2_choice", {:option => "spock"})
      click_button('p2_move')
      expect(page).to have_text("Results")
    end
  end

end
