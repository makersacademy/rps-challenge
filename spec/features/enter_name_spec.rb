feature 'Enter player name' do
  scenario 'submits player name' do
    visit '/'
    fill_in :player_1, with: 'Boulder'
    click_button 'Submit'

    expect(page).to have_content ('Boulder vs. CPU')
  end
end
