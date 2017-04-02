feature "Testing infrastructure" do

  scenario "Can run content on homepage" do
    visit('/')
    expect(page).to have_content 'Preparing for battle! Enter name:'
  end

  scenario "to start playing" do
    sign_in_and_play
    expect(page).to have_content "Rocky vs. Stoney. Fight!"
  end

  scenario "choosing rock attack" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Rocky picked rock."
  end

  scenario "choosing paper attack" do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Rocky picked paper."
  end

  scenario "choosing scissors attack" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Rocky picked scissors."
  end

  scenario "plays again when game ended" do
    sign_in_and_play
    click_button "Rock"
    click_button "Play again"
    expect(page).to have_content "Choose wisely..."
  end
end
