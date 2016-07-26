require 'spec_helper'

feature 'User loses' do
  scenario "User picks rock and computer picks paper" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button('rock')
    expect(page).to have_content("You lose!")
  end
end
