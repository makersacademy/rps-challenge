require_relative 'web_helpers'

feature "Enter name" do
  scenario "Player name is displayed on screen" do
    sign_in_and_play
    expect(page).to have_content "Hi Spud!"
  end
end
