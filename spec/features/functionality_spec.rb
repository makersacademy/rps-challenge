feature "naming capability" do 
  scenario "you can enter a name" do
    visit "/" 
    fill_in "player1", with: "Ollie"
    click_button 'Start Game'
    expect(page).to have_content "Player 1: Ollie"
    expect(page).to have_content "Choose your fighter!"
  end
end