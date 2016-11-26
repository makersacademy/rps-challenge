require './app'
require 'spec_helper'

feature "Entering the name of the player" do
  scenario "Player enter the name" do
    visit '/'
    fill_in "username", :with => "Veronica"
    click_button "Start!"
    expect(page).to have_text("Hi Veronica")
  end

end
