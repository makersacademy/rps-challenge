require 'spec_helper'
require_relative 'web_helper'

feature "computer makes a selection" do
  scenario "the computer makes a selection" do
    srand(1234)
    sign_in_and_select_rock
    expect(page).to have_text("AIbot chose Paper")
  end
end
