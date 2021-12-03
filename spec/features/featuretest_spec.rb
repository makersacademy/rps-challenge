feature "Feature test" do

  scenario "shows hello in index" do
    visit('/')
    expect(page).to have_content("Hello world!")
  end

  scenario "index page has button for each option" do
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissor')
  end

end
