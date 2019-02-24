feature 'player can see the winner of the game' do
  scenario 'winner is announced' do
    sign_in
    click_button "Play RPS"
    click_button "Rock"
    expect(page).to satisfy {|page| page.has_content?('Draw') or page.has_content?('Computer wins') or page.has_content?('Player wins')}
    expect(page).to have_content("Want to play again?")
  end
end
