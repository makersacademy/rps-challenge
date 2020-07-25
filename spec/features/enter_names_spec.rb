require 'spec_helper'

feature "enter name" do
  scenario "player types in name" do
    sign_in_and_play
    expect(page).to have_content "Lanie is playing!"
  end
end
