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

  scenario "Contains rock" do
    submit_name
    expect(page).to have_button("Rock")
  end

  scenario "Contains paper" do
    submit_name
    expect(page).to have_button("Paper")
  end

  scenario "Contains scissors" do
    submit_name
    expect(page).to have_button("Scissors")
  end
end
