require_relative 'web_helpers'

feature 'Attack' do
  scenario 'choosing attack' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content 'You chose Rock!!'
  end
end
