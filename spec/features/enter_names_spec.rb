require 'features/web_helpers.rb'

feature "FEATURE: Enter names" do
  scenario "can start game with two player names" do
    play_two_player
    expect(page).to have_text("Beast")
    expect(page).to have_text("Magneto")
  end
  scenario "can start game with one player vs computer" do
    play_vs_computer
    expect(page).to have_text("Beast")
    expect(page).to have_text("AI Magneto")
  end
end
