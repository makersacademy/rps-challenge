require_relative 'web_helpers'

feature "RPS" do
  scenario "homepage loads correctly" do
    visit('/')
    expect(page).to have_content("Player Name")
  end

  scenario "name can be entered and RPS choice is presented" do
    visit('/')
    fill_in "player_name", with: "Lenny"
    click_on "Submit"
    expect(page).to have_content("Paper")
  end

  scenario "RPS choice can be entered and choices are displayed" do
    visit('/')
    fill_in "player_name", with: "Lenny"
    click_on "Submit"
    choose "Rock"
    click_on "Submit"
    expect(page).to have_content("You chose rock")
  end

  scenario "can play again and choose RPS option" do
    visit('/')
    fill_in "player_name", with: "Lenny"
    click_on "Submit"
    choose "Rock"
    click_on "Submit"
    click_on "Play Again"
    expect(page).to have_content("Paper")
  end
end
