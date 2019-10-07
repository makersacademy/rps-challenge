feature 'Player can play again?' do
  scenario 'click Play Again, pick another move' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content "Pick a move, Meatbag!"
    
  end
end
