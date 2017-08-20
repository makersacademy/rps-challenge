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

  scenario "does not show player move before any moves have happened" do
    submit_name
    expect(page).to have_no_text("You played paper")
  end

  scenario "does not show computer move before any moves have happened" do
    submit_name
    expect(page).to have_no_text("They played paper")
  end

  scenario "show default score" do
    submit_name
    expect(page).to have_text("0:0")
  end

  scenario "show score" do
    submit_name
    click_button("Rock")
    expect(page).to have_text(":")
  end

  scenario "Contains rock" do
    submit_name
    expect(page).to have_button("Rock")
  end

  scenario "Informs player they played rock" do
    submit_name
    click_button("Rock")
    expect(page).to have_text("You played rock")
  end

  scenario "Contains paper" do
    submit_name
    expect(page).to have_button("Paper")
  end

  scenario "Informs player they played paper" do
    submit_name
    click_button("Paper")
    expect(page).to have_text("You played paper")
  end

  scenario "Contains scissors" do
    submit_name
    expect(page).to have_button("Scissors")
  end

  scenario "Informs player they played scissors" do
    submit_name
    click_button("Scissors")
    expect(page).to have_text("You played scissors")
  end

  scenario "Contains lizard" do
    submit_name
    expect(page).to have_button("Lizard")
  end

  scenario "Informs player they played lizard" do
    submit_name
    click_button("Lizard")
    expect(page).to have_text("You played lizard")
  end

  scenario "Contains spoc" do
    submit_name
    expect(page).to have_button("Spoc")
  end

  scenario "Informs player they played spoc" do
    submit_name
    click_button("Spoc")
    expect(page).to have_text("You played spoc")
  end

  scenario "Informs player computer played" do
    submit_name
    click_button("Rock")
    expect(page).to have_text("They played")
  end

  scenario "Does not display winner before any moves" do
    submit_name
    expect(page).to have_no_text("Winner:")
  end

  scenario "Displays winner after move" do
    submit_name
    click_button("Rock")
    expect(page).to have_text("Winner:")
  end

  scenario "can get back to home page" do
    submit_name
    click_button("Reset")
    expect(page).to have_text("Welcome")
  end

  scenario "can reset scores" do
    submit_name
    5.times { click_button("Rock") }
    click_button("Reset")
    submit_name
    expect(page).to have_text("0:0")
  end
end
