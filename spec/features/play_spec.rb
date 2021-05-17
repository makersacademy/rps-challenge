feature 'Play Game' do
  scenario 'Checks you can press a play button' do
    visit('/')
    fill_in :player_1, with: 'Felix'
    click_button 'Lets Play!'
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end
end
