require "./app"
require "spec_helper.rb"

feature Rps do
  scenario "lets the player enter a name" do
    sign_in
    expect(page).to have_content("Jake")
  end
end