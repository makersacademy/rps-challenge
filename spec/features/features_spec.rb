require './app'
require './lib/computer'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature "Start the game" do

  scenario "register player's name" do
    visit '/'
    fill_in('NAME', with: "Wanda Maximoff")
    click_button "ENTER"
    expect(page).to have_content("Wanda Maximoff")
  end

end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature "Play Rock, Paper, Scissors" do

  feature "Tells player whether they have lost, won, or drawn" do

    scenario "tells player they have lost when they lose" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      visit '/'
      fill_in('NAME', with: "Wanda Maximoff")
      click_button "ENTER"
      click_button "ROCK"
      expect(page).to have_content("YOU LOSE!")
    end

    scenario "tells player they have won when they win" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      visit '/'
      fill_in('NAME', with: "Steve Rogers")
      click_button "ENTER"
      click_button "SCISSORS"
      expect(page).to have_content("YOU WIN!")
    end

    scenario "tells player they have drawn when they draw" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:SCISSORS)
      visit '/'
      fill_in('NAME', with: "Peter Parker")
      click_button "ENTER"
      click_button "SCISSORS"
      expect(page).to have_content("DRAW!")
    end

  end

end
