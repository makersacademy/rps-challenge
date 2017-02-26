require 'spec_helper'

feature "Results page" do

  scenario "Expect results page show winner" do
    sign_in_and_make_choices
    expect(page).to have_content "Player 2 won"
  end

end
