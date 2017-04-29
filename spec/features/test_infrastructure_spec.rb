require './rps_game.rb'

feature 'testing infrastructure' do
  scenario 'can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure works'
  end
end
