require 'spec_helper'

feature 'Game result' do
  before(:each) do
    enter_name
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end

  scenario 'player wins' do
    click_button 'paper'
    expect(page).to have_content 'You win!'
  end

  scenario 'player loses' do
    click_button 'scissors'
    expect(page).to have_content 'You lose!'
  end

  scenario 'player draws' do
    click_button 'rock'
    expect(page).to have_content 'You draw!'
  end
end
