require "spec_helper"
require './spec/feature/web_helper'

feature "register name" do
  scenario "I would like to register my name before playing" do
    visit("/")
    sign_in_and_play
    expect(page).to have_content "Courtney"
  end
end
