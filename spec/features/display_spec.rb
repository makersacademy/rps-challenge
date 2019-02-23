require './app'

feature "Display" do
  scenario "shows player's name after they register" do
    register
    expect(page).to have_content("Mark Eteer")
  end
  scenario "shows rock, paper, scissors options" do
    register
    expect(page).to have_field("rps")
  end
  scenario "shows the game's choice of rps" do
    srand(3)
    register
    choose 'paper'
    click_button 'Play'
    expect(page).to have_content("The game chose scissors")
  end
end
