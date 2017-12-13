require_relative '../../app.rb'

Capybara.app = RPSWeb
feature 'fill in name and submit the form' do
  scenario 'submit name' do
    visit('/')
    fill_in :name, with: 'Gabriela'
    click_button 'Submit'
    visit('/play')
    expect(page).to have_content 'Gabriela playing Rock Paper Scissors'
  end
end
