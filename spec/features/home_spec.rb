require_relative '../../app'

feature 'home' do
  scenario 'Get ready to play' do
    visit '/'
    fill_in 'player', with: 'Steve'
    click_on 'Start'
    expect(page).to have_content 'Get Ready Steve!'
  end
end
