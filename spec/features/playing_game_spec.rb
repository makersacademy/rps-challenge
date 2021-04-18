# frozen_string_literal: true

feature 'Playing a game' do
  scenario 'before pressing play' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content('Score: 0')
  end

  scenario 'before pression play' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content('Computer')
  end
end
