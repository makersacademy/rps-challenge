require_relative 'web_helpers'

feature "Play page" do
  scenario "displays entered name" do
    move_past_welcome
    fill_in :player1_name, with: "Dave"
    click_button "Play"
    expect(page).to have_content "Dave vs Computer"
  end

  scenario "displays variety of possible moves" do
    move_past_welcome
    fill_in :player1_name, with: "Dave"
    click_button "Play"
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

end
