feature "play again option" do

  before do
    sign_in
    expect(page).to have_content "Lexi It's Lexi's turn. Pick a value, Lexi! Hazuki"
    find("button[class=top][type=submit][value='Lizard']").click
    find("button[class=bottom][type=submit][value='Scissors']").click
    expect(page).to have_content "HAZUKI WINS"
    expect(page).to have_content "Play again?"
  end

  scenario "yes to play again" do 
    click_button "YES"
    expect(page).to have_content "Lexi It's Lexi's turn. Pick a value, Lexi! Hazuki"
  end

  scenario "no to play again" do
    click_button "NO"
    expect(page).to have_content "THANKS FOR PLAYING ROCK PAPER SCISSORS LIZARD SPOCK"
  end
  
end