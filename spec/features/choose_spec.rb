require 'spec_helper'

RSpec.feature 'player chooses from rock, paper, scissor', :type => :feature do
  scenario 'choose rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You choose Rock!'
  end

  scenario 'choose paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'You choose Paper!'
  end

  scenario 'choose scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content 'You choose Scissors!'
  end
end
