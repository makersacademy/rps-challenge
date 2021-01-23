feature 'register player name' do
  scenario 'user can add their name with a submit button' do
    visit '/'
    fill_in :player_1_name, with: 'Holly'
    click_button ('Submit')
    expect(page).to have_content 'Holly vs Computer'
  end
end
