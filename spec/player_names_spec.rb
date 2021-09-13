feature 'Player names' do
  scenario 'Submit player names' do
    visit '/'
    fill_in :player1, with: 'Bob'
    fill_in :player2, with: 'Tim'
    click_button 'Submit'
    expect(page).to have_content 'Bob VS Tim'
  end
end
