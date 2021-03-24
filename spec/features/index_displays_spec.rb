describe RPS do
  feature "#index.erb" do
    scenario "should show the title of the game, Rock Paper Scissors" do
      visit '/'
      expect(page).to have_content('ROCK PAPER SCISSORS')
    end
  end
end
