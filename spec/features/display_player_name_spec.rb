feature 'entering name' do
  scenario 'display player\'s name' do
    visit '/'
    fill_in 'player_1', with: 'Max'
    click_on 'Submit'
    expect(page).to have_content 'Make your choice, Max.'
  end
end