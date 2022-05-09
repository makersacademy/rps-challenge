feature "Going to the homepage, entering a player name" do

  scenario "the home page returns a successful status code" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "page contains 'Please enter your name(s)'" do
    visit("/")
    expect(page).to have_content('Please enter your name(s)')
  end

  scenario "Page contains an option for single player mode" do
    visit("/")
    expect(page).to have_selector(:link_or_button, 'Single Player Mode')
  end

end
