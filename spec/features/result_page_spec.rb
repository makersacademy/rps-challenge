require 'spec_helper'
require 'web_helper'

feature 'result page' do
  scenario 'displays the winner of the game' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Harry is the winner!!!'
  end

  scenario 'displays the player\'s choice' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Harry chooses rock'
  end

  scenario 'displays the computer\'s choice' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Computer chooses scissors'
  end


end
