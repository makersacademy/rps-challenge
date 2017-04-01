feature "Testing infrastructure" do

  scenario "Can run content on homepage" do
    visit('/')
    expect(page).to have_content 'Enter player names:'
  end

  scenario "to start playing" do
    sign_in_and_play
    expect(page).to have_content "Rocky vs. Stoney. Fight!"
  end



end