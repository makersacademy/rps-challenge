require 'spec_helper'

feature "Results page calculates a winner" do
  scenario "Shows player_1 choice" do
    sign_in_and_begin
    choose_scissors_and_submit
    expect(page).to have_content("scissors vs.")
  end
end
