require_relative 'web_helpers'

feature 'Exit game' do
  scenario 'Click on exit button to return to homepage' do
    sign_in_and_play
    click_button 'Exit'
    expect(page).to have_content 'Enter your name to play:'
  end
end