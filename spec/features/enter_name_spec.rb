require 'spec_helper'

feature "name entry" do
  scenario "users enters new name" do
    sign_in_and_play
    expect(page).to have_content "ass vs. computer"
  end
end
