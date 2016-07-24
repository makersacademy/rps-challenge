require 'spec_helper'

feature 'User wins' do
  scenario "User picks rock and computer picks scissors" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button('rock')
    expect(page).to have_content("You win!")
  end
end
