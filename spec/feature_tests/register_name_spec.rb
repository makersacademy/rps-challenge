
feature 'Name registration' do
  scenario 'Player registers name' do
    visit '/'
    fill_in :player_name, with: 'John'
    click_on 'Start game'
    expect(page).to have_content 'John'
  end
end
