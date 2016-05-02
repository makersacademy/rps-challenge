feature 'Play the game' do

  before do
    sign_in
  end

  scenario "print turn message" do
    expect(page).to have_content "Lexi It's Lexi's turn. Pick a value, Lexi! Hazuki"
  end

  scenario 'pick between 5 options' do
    expect(page).to have_selector("button[type=submit][value='Lizard']")
    expect(page).to have_selector("button[type=submit][value='Paper']")
    expect(page).to have_selector("button[type=submit][value='Rock']")
    expect(page).to have_selector("button[type=submit][value='Spock']")
    expect(page).to have_selector("button[type=submit][value='Scissors']")
  end

  scenario "determine winner" do
    find("button[type=submit][value='Lizard']").click
    find("button[type=submit][value='Scissors']").click
    expect(page).to have_content "Hazuki WINS"
  end
end