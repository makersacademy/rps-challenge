require_relative '../../app.rb'

feature 'saving user\'s name' do
  scenario 'user enters name' do
    visit('/')
    fill_in('name', with: 'Chocolate Rain')
    click_on('Submit')
    expect(page).to have_content 'Chocolate Rain vs Random Ruby'
  end
end
