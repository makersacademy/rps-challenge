require './app/rps_web.rb'

feature 'testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Let's play!"
  end
end
