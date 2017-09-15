feature 'it displays the players names' do
  scenario 'players have entered their names' do
    visit '/'
    fill_in :player1, with: 'James'
    fill_in :player2, with: 'Charlotte'
    click_button 'OK'
    expect(page).to have_content 'James vs. Charlotte'
  end
end
