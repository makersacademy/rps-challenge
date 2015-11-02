require "web_helpers"

feature "plays the game" do
  scenario "can choose rock, paper, or scissors" do
    sign_in
    expect(page).to have_content("YAAARRRGH VS THE WORLD")
    click_link(@id='cat')
    click_link(@id='goku')
    click_link(@id='patrick')
  end
end
