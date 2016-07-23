require 'spec_helper'

feature 'Enter name' do
  scenario "User and computer both pick rock" do
    sign_in_and_play
     allow_any_instance_of(Array).to receive(:sample).and_return(:Rock)
    click_button('Rock')
    expect(page).to have_content("It's a draw!")
  end
end
