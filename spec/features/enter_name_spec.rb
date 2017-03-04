require 'spec_helper'

RSpec.feature "enter name before the game" do
  scenario "allows player to enter their names before game starts" do
    visit "/"
    fill_in("player_name", with: "Chris")
    click_button("Submit")
    expect(page).to have_text("Chris")
  end
end
