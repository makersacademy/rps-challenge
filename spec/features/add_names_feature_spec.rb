
require 'spec_helper'

feature "Player enters their name" do
  scenario "A user enters their name" do
    sign_in_and_play
     expect(page).to have_content("Lucy")
  end
end
