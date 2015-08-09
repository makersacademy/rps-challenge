require 'spec_helper'

feature 'Registering for the game' do
  scenario 'I choose a version of the game' do
    visit '/'
    click_button('Classic RPS')
    expect(page).to have_content("What's your name?")
  end

  scenario 'I am asked to enter my name' do
    visit '/'
    click_button('Classic RPS')
    fill_in('player_name', with: 'Rebecca')
    click_button('Submit')
    expect(page).to have_content('Hi there Rebecca!')
  end

  scenario 'If no name entered, player assigned name Anonymous' do
    visit '/'
    click_button('Classic RPS')
    fill_in('player_name', with: '')
    click_button('Submit')
    expect(page).to have_content('Hi there Anonymous!')
  end

  scenario 'Registering two players' do
    visit '/'
    click_button('Classic RPS')
    fill_in('player_name', with: 'Rebecca')
    click_button('Submit')
    expect(page).to have_content('Hi there Rebecca!')

    old_session = Capybara.session_name
    Capybara.session_name = :second_session

    visit '/'
    click_button('Classic RPS')
    fill_in('player_name', with: 'James')
    click_button('Submit')
    expect(page).to have_content('Hi there James!')

    Capybara.session_name = old_session
  end
end