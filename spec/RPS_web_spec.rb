require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Asks for a name' do
    visit '/'
    expect(page).to have_content 'Enter your name!'
  end

  scenario 'It shows the users name after submitted' do
    visit '/'
    fill_in('name', with: 'Jack')
    click_button 'Submit'
    expect(page).to have_content 'Jack'
  end

  scenario 'It asks the user to chose RPS' do
    visit '/RPS'
    expect(page).to have_content 'rock paper scissors'
  end

  scenario 'It shows the game result' do
    visit '/RPS'
    select 'rock', :from => 'choice'
    click_button 'submit'
    expect(page).to have_content 'You'
  end

end
