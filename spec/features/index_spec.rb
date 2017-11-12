require_relative '../../app.rb'

Capybara.app = RPSWeb
feature 'fill in name and submit the form' do
  scenario 'submit name' do
    visit('/')
    fill_in :name, with: 'Gabriela'
    click_button 'Submit'
    expect(page).to have_content 'Gabriela'
  end
end
