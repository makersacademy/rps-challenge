require 'spec_helper'
require 'capybara'

feature 'Selecting weapon' do
  scenario 'winning game' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:Paper)
    click_button "Scissors"
    expect(page).to have_content 'Sam wins!'
  end

  scenario 'drawing game' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
    click_button "Scissors"
    expect(page).to have_content "It's a draw!"
  end

  scenario 'losing game' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:Rock)
    click_button "Scissors"
    expect(page).to have_content 'Sam loses!'
  end

end
