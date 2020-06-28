require '/Users/joannechen/Projects/rps-challenge/app.rb'

feature 'Enter name' do
  scenario 'after name entered' do
    visit('/')
    fill_in :player, with: 'Joanne'
    click_button 'Enter'
    expect(page).to have_content 'Welcome Joanne!'
  end
end