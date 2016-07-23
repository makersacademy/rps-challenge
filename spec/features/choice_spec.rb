require 'spec_helper'

feature 'choice' do
  scenario "User selects their choice" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("You picked Rock!")
  end
end
