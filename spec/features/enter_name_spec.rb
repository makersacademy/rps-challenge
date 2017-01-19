require './app'
require 'spec_helper'

feature "Entering the name of the player" do
  scenario "Player enter the name" do
    visit '/'
    fill_in "username", :with => "Veronica"
    expect(page).to have_text("name")
  end
end
