require 'spec_helper'

feature 'computer can randomly chose option' do
  scenario 'computer selects option' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Computer randomly choses attack method Paper")

  end
end
