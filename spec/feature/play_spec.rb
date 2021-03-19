require "capybara/rspec"
require_relative "../../app"

Capybara.app = RpsApp

feature "/play" do
  scenario "when players name entered, should serve play page" do
    sign_in_and_play
  end
end
