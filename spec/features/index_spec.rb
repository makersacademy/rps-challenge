require 'spec_helper'

feature "index page" do
  scenario "front page" do
    visit "/"
    expect(page).to have_text("Rock, Paper, Scissors")

  end

  scenario "entering name" do
    sign_in_and_play
    expect(page).to have_text("Welcome Elizabeth")
  end
end
