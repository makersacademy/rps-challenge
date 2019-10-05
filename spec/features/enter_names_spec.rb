feature 'Enter names' do
  scenario 'Player can type and submit their name' do
    visit('/')
    click_button('Single Player Mode')
    fill_in :player1, with: 'Nathan'
    click_button('Start')
    expect(page).to have_content 'Nathan vs COMPUTER - FIGHT!'
  end
end
