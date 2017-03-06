require 'spec_helper'

RSpec.feature "confirms player has lost" do
  scenario "gives a confirmation message" do
    visit "/loser"
    expect(page).to have_text("Unlucky, you have lost!")
  end
end
