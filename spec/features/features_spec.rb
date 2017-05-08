require './app'
require './lib/computer'

feature "Start the game" do

  scenario "register player's name" do
    sign_in_and_enter()
    expect(page).to have_content("Wanda Maximoff")
  end

end

feature "Play Rock, Paper, Scissors" do

  feature "Tells player whether they have lost, won, or drawn" do

    scenario "tells player they have lost when they lose" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      sign_in_and_enter()
      click_button "ROCK"
      expect(page).to have_content("YOU LOSE!")
    end

    scenario "tells player they have won when they win" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      sign_in_and_enter()
      click_button "SCISSORS"
      expect(page).to have_content("YOU WIN!")
    end

    scenario "tells player they have drawn when they draw" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:SCISSORS)
      sign_in_and_enter()
      click_button "SCISSORS"
      expect(page).to have_content("DRAW!")
    end

  end

end
