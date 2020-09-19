require "./spec/features/web_helpers"

feature "players" do
  scenario "add name" do
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Bot"
  end
end
