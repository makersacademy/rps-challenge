require 'spec_helper'

RSpec.feature "selectiong game options" do
  scenario "selecting rock scissors paper" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("Rock!! let's rock Matrix!")
  end
end
