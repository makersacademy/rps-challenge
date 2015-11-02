require 'spec_helper'

feature 'computer can randomly chose option' do
  scenario 'computer selects option paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return("paper")
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content("Computer randomly choses attack method paper")
  end
end
