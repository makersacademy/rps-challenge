feature "It has a link to play again" do

  # Bonus level 1: Multiplayer
  # Change the game so that two marketeers can play against each other.

  scenario 'you want to play again' do
    visit_page_and_register
    click_button 'PAPER!'
    click_button 'Play again?'
    expect(page).to have_content 'How many players?'
  end

end
