require 'spec_helper'

feature "Storing choice, " do
  scenario "selecting Rock,Paper or Scissors" do
    visit ('/')
    fill_in :player_1_name, :with => "Ben"
    click_button "Submit"
    fill_in :choice, :with => "Rock"
    click_button "Submit"
    expect(page).to have_content "You chose Rock"
  end
end
