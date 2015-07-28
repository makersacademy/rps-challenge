require_relative '../spec_helper'

describe 'starting a one player game' do
  scenario 'asked to enter name and click one player' do
    visit '/'
    fill_in('name', with: 'Paul')
    click_button 'One player'
    expect(page).to have_content "Welcome to one player RPS, Paul"
  end

  scenario 'pick a selection and get a game result' do
    visit '/'
    fill_in('name', with: 'Paul')
    click_button 'One player'
    choose 'Scissors'
    click_button 'Submit'
    expect(page).to have_content 'scissors'
  end
end

describe 'starting a two player game' do
  scenario 'ask to enter name and click two player' do
    visit '/'
    fill_in('name', with: 'Paul')
    click_button 'Two player'
    expect(page).to have_content "Welcome to two player RPS, Paul"
  end


  scenario 'ask to enter name for second player' do
    visit '/'
    fill_in('name', with: 'Paul')
    click_button 'Two player'
    fill_in('name_2', with: 'Mikey')
    click_button "Let's go!"
    expect(page).to have_content "please make your selection"
  end

  scenario 'ask to enter name for second player' do
    visit '/'
    fill_in('name', with: 'Paul')
    click_button 'Two player'
    fill_in('name_2', with: 'Mikey')
    click_button "Let's go!"
    choose 'Scissors'
    click_button 'Submit'
    choose 'Rock'
    click_button 'Submit'

  end


end
