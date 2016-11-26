require 'spec_helper'

RSpec.feature "player sets their name", :type => :feature do
  scenario "submitting name" do
    sign_in_and_play
    expect(page).to have_content "Welcome Amanda!"
  end
end
