require 'spec_helper'

feature "choose move" do
  scenario "pick move and receive confirmation" do
    sign_in_and_play
    choose('rock')
    click_button('Submit')
    expect(page).to have_content('You chose rock!')
  end
end
