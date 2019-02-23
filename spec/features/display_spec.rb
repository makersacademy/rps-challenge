require './app'

feature "Display" do
  scenario "shows player's name after they register" do
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    expect(page).to have_content("Mark Eteer")
  end
  scenario "shows rock, paper, scissors options" do
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    expect(page).to have_field("rps")
  end
  scenario "shows the game's choice of rps" do
    srand(3)
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    choose 'paper'
    click_button 'Play'
    expect(page).to have_content("The game chose scissors")
  end
end
