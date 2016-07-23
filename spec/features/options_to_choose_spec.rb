require 'web_helpers'


feature "player has options to choose" do
  scenario "player sees his three options" do
    sign_in_and_play
    expect(page).to have_content("Please choose one: Rock Scissor Paper")
  end
  scenario "player chooses rock" do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content("Samed chose rock")
  end
  scenario "computer chooses randomly" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content ("Computer chose:")
  end

end
