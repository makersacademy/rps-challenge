require 'spec_helper'

feature 'computer responds to player' do

  scenario 'computer turn generated on results page' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button 'rock'
    expect(page).to have_content "Computer chose scissors!"
  end

end
