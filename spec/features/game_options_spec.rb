feature 'Play the game' do

  before do
    sign_in
  end

  scenario "print turn message" do
    expect(page).to have_content "Lexi It's Lexi's turn. Pick a value, Lexi! Hazuki"
  end

  scenario 'player 1 can choose 5 options' do
    expect(page).to have_selector("button[class=top][type=submit][value='Lizard']")
    expect(page).to have_selector("button[class=top][type=submit][value='Paper']")
    expect(page).to have_selector("button[class=top][type=submit][value='Rock']")
    expect(page).to have_selector("button[class=top][type=submit][value='Spock']")
    expect(page).to have_selector("button[class=top][type=submit][value='Scissors']")
  end

   scenario 'player 2 can choose 5 options' do
    expect(page).to have_selector("button[class=bottom][type=submit][value='Lizard']")
    expect(page).to have_selector("button[class=bottom][type=submit][value='Paper']")
    expect(page).to have_selector("button[class=bottom][type=submit][value='Rock']")
    expect(page).to have_selector("button[class=bottom][type=submit][value='Spock']")
    expect(page).to have_selector("button[class=bottom][type=submit][value='Scissors']")
  end

  scenario "determine winner" do
    find("button[class=top][type=submit][value='Lizard']").click
    find("button[class=bottom][type=submit][value='Scissors']").click
    expect(page).to have_content "HAZUKI WINS"
  end

  scenario "determine tie" do
    find("button[class=top][type=submit][value='Scissors']").click
    find("button[class=bottom][type=submit][value='Scissors']").click
    expect(page).to have_content "IT'S A TIE."
  end

  scenario "stop playing the game" do
    click_button "STOP PLAYING"
    expect(page).to have_content "THANKS FOR PLAYING ROCK PAPER SCISSORS LIZARD SPOCK"
  end
end