require_relative '../../app.rb'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content('Hello Tom')
  end
end
