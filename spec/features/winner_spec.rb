require 'spec_helper'

RSpec.feature "confirms player has won" do
  scenario "gives a confirmation message" do
    visit "/winner"
    expect(page).to have_text("Congratulations, you are the winner")
  end
end
