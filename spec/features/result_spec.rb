require 'spec_helper'

feature "Results page" do

  scenario "Expect results page show winner" do
    sign_in_and_make_choices
    expect(page).to have_content "Andrew won"
  end

  scenario "Expect results page show winner" do
    sign_in_and_make_choices
    click_button 'Play Again'
    expect(page).to have_content "Enter player names"
  end

end
