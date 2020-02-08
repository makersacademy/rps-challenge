require "spec_helper"

feature "play RPS" do
  before do
    visit "/"
    fill_in "name", with: "Mrtl"
    click_button "Submit"
  end

  # player can see rps options
  scenario "see options for r p s" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  # player can choose their rps
  scenario "choose rock paper or scissors" do
    click_button "Rock"
    expect(page).to have_content "You chose Rock!"
  end

  # the game chooses an option
  scenario "game chooses Rock" do
    click_button "Rock"
    message = find(:css, "#opponent").text
    expect(possible_choices).to include message
  end

  def possible_choices
    [:rock, :paper, :scissors].map { |choice| "Opponent chose #{choice.to_s.capitalize}!" }
  end
end
