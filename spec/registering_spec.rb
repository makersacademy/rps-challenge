require 'spec_helper'

feature 'Registering for the game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    fill_in('player_name', with: 'Rebecca')
    click_button('Submit')
    expect(page).to have_content('Hi there Rebecca!')
  end

  scenario 'Registering two players' do
    visit '/'
    fill_in('player_name', with: 'Rebecca')
    click_button('Submit')
    expect(page).to have_content('Hi there Rebecca!')

    old_session = Capybara.session_name
    Capybara.session_name = :second_session

    visit '/'
    fill_in('player_name', with: 'James')
    click_button('Submit')
    expect(page).to have_content('Hi there James!')

    Capybara.session_name = old_session
  end
end