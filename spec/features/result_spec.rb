feature 'takes users move and returns result' do
  scenario 'user chooses a move' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to satisfy { |page| page.has_content?("computer choice is:") && (("you win! :)" ) or ("computer wins :(")) or page.has_content?("It's a draw")}
    expect(page).to have_content("Play again")
  end
end
