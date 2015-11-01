require 'spec_helper'

feature 'result declares the winner' do
  scenario 'compares and choses th correct winner' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Paper wraps Rock computer wins!!")

  end
end
