feature 'Player names' do
  scenario 'Submit player names' do
    visit '/'
    fill_in :player, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob VS Computer'
  end
end
