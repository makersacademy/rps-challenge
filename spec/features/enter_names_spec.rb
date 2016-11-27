require 'spec_helper'
RSpec.feature "Register name to play rock, paper, scissors game" do
  scenario "Lands on game homepage and enters username" do
    sign_in_and_play
    expect(page).to have_content("Liz has been successfully created")
  end
end
