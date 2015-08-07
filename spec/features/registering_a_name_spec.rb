require "spec_helper"

feature "Registering my name" do
  scenario "I am asked to enter my name" do
    visit "/"
    click_link "New Game"
    expect(page).to have_content "What's your name?"
  end
end
