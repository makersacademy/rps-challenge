require 'spec_helper'
require_relative 'web_helper'

feature "computer makes a selection" do
  scenario "the computer makes a selection" do
    sign_in_and_select_rock
    #expect(page).to have_text("Rock crushes scissors, but gets smothered by paper")
  end
end
