feature "Game on" do

  scenario "tests for page content" do
    visit('/play')
    expect(page).to have_content "Choose your item:"
  end

end
