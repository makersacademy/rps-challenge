require "spec_helper"
=begin
feature "Player can lose" do
  scenario "player throw rock, computer throws paper" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You lost to computer"
  end
end
=end
