require 'spec_helper'

feature 'playing rps' do
  before do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Submit'
  end

  scenario 'see what shapes we have' do
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'choose a shape' do
    click_button 'rock'
    expect(page).to have_content 'You selected rock!'
  end

  scenario 'game chooses "rock"' do
    click_button 'rock'
    expect(page).to have_content "Your opponent selected rock!"
  end



end
