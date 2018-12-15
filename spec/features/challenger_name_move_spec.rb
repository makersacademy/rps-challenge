require_relative '../../rps_app'

feature 'Challenger move' do
  scenario 'challenger submits name and move' do
    visit('/')
    fill_in :challenger, with: 'Link'
    select('ROCK', from: 'move')
    click_button 'one, two, THREE'
    expect(page).to have_content 'Link chose ROCK'
  end
end
