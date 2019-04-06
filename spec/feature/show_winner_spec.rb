feature 'Show if you won or lost' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    page.should satisfy {|page| page.has_content?("Victorious!") or page.has_content?("defeated you!") or page.has_content?("Stalemate...")}
  end
end
