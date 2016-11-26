require 'spec_helper'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

RSpec.feature "Marketer can register" do
  scenario "with his name" do
    register_and_play
    expect(page).to have_content "Tom"
  end
end
