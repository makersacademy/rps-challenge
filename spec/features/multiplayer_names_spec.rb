feature 'entering player name' do

  scenario 'enter and submit a name on the form' do
    visit '/'
    fill_in('player1', :with => 'Toby')
    fill_in('player2', :with => 'Barry')
    click_button(:multiplayer)
    expect(page).to have_content "Toby vs Barry"
  end
end
