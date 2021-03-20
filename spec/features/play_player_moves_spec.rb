describe RPS do
  feature "#play.erb" do
    scenario "should allow the player to enter a move" do
      enter_names_rps
      expect(page).to have_content('Gordon vs. Caroline')
    end
  end
end
