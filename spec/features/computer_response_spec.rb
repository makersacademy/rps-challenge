require 'spec_helper'

feature 'computer choice displayed on results page' do

  scenario 'computer chooses rock' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button 'rock'
    expect(page).to have_content "Computer chose rock!"
  end

  scenario 'computer chooses paper' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button 'rock'
    expect(page).to have_content "Computer chose paper!"
  end

  scenario 'computer chooses scissors' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button 'rock'
    expect(page).to have_content "Computer chose scissors!"
  end


end
