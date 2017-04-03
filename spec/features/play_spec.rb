require 'spec_helper'

feature 'Display opponent names' do
  scenario "Play page announces the opponents" do
    sign_in
    expect(page).to have_content("Colin vs. Robot")
  end

  scenario "Play page should have Hand options" do
    sign_in
    expect(page).to have_selector("input[type=submit][value='rock']")
    expect(page).to have_selector("input[type=submit][value='paper']")
    expect(page).to have_selector("input[type=submit][value='scissors']")
  end
end
