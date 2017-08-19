require_relative 'web_helpers'

RSpec.feature "Game Page", type: :feature do
  scenario "it greets player by name" do
    submit_name
    expect(page).to have_text("Hello Monkey!")
  end

  scenario "redirects if no name is provided" do
    visit('/game')
    expect(page).to have_text("Welcome")
  end
end
