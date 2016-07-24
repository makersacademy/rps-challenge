require "spec_helper"

feature "Choosing weapon" do
  scenario "The player is given a choice of weapons" do
    sign_in
    expect(page).to have_content"Rock Paper Scissors"
  end
end
