require "web_helpers"

feature "plays the game" do
  scenario "can choose rock, paper, or scissors" do
    sign_in
    expect(page).to have_content("YAAARRRGH VS THE WORLD")
    find("img[alt='paper']").click
    find("img[alt='rock']").click
    find("img[alt='scissors']").click
  end
end
