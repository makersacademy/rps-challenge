require_relative 'web_helpers'

feature "Play page" do
  scenario "entered name to be displayed on Play page" do
    move_past_welcome
    fill_in :player1_name, with: "Dave"
    click_button "Play"
    expect(page).to have_content "Dave vs Computer"
  end

end
