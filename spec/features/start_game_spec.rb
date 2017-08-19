require_relative 'web_helpers'

RSpec.feature "Start Game", type: :feature do
  scenario "it asks player to enter name" do
    submit_name
    expect(page).to have_text("Hello Monkey!")
  end
end
