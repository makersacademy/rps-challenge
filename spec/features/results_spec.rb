
feature "it should present a winner" do

  scenario "on landing on the page it should present Mike as the winner" do
    visit("/results_won?name=Mike")
    expect(page).to have_content("You won\nMike!\nbrilliant action")
  end

  scenario "on landing on the page it should present the Mike as the loser" do 
    visit("/results_lost?name=Mike")
    expect(page).to have_content("You lost\nMike..\nsoft action")
  end

  scenario "you won" do
   visit("results_won?wact=paper&lact=rock")
   expect(page).to have_content("against poor\nrock")
   expect(page).to have_content("you had:\npaper")
  end

  scenario "you lost" do
    visit("results_lost?wact=paper&lact=rock")
    expect(page).to have_content("against wicked\nrock")
    expect(page).to have_content("you had:\npaper")
  end

  scenario "navigate back to game from results where you won" do
    visit("/results_won")
    click_link("Play again")
    expect(page).to have_content("What is your weapon of choice?")
  end

  scenario "navigate back to game from results where you lost" do
    visit("/results_lost")
    click_link("Play again")
    expect(page).to have_content("What is your weapon of choice?")
  end

end
