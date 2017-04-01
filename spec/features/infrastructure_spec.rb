feature "Testing infrastructure" do

  scenario "Can run content on homepage" do
    visit('/')
    expect(page).to have_content 'Enter player names:'
  end

  scenario "to start playing" do
    sign_in_and_play
    expect(page).to have_content "Rocky vs. Stoney. Fight!"
  end

  scenario "choosing rock attack" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Rocky picked rock. Stoney picked scissors. rock damaged scissors. Rocky wins!"
  end
end