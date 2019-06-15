require "././app.rb"
require_relative 'web_helpers.rb'

feature "given_choices" do
  scenario "lists Rock, Paper, Scissors" do
    sign_in_and_play
    expect(page).to have_content ("Rock")
    expect(page).to have_content ("Paper")
    expect(page).to have_content ("Scissors")
  end
  scenario ''
end
