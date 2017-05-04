require_relative 'web_helpers'

feature 'User can choose Rock, Paper or Scissors' do
  scenario 'Chooses Rock' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'User chose Rock!'
  end
end
