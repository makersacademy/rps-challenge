require './app'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Starting RPS application!'
  end
end