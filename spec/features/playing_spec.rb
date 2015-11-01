require "web_helpers"

feature "plays the game" do
  scenario "can choose rock, paper, or scissors" do
    sign_in
    expect(page).to have_content("YAAARRRGH VS THE WORLD")
    click_link(@id='rock')
    click_link(@id='paper')
    click_link(@id='scissors')
  end
end
