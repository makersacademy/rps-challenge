require 'spec_helper'

feature 'Display opponent names' do
  scenario "Play page announces the opponents" do
    sign_in
    expect(page).to have_content("Colin vs. Robot!")
  end
end
