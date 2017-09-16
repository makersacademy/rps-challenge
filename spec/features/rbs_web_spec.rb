require './app/rps_web.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Let's play!"
  end
end
