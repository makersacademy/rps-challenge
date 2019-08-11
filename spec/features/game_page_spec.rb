feature "game_page" do
  scenario "the user is greeted by their name" do
    sign_in
    expect(page).to have_content "Guillaume"
  end

  scenario "the user is presented with move choice" do
    sign_in
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "redirects to page /outcome" do
    sign_in
    click_button "Rock"
    expect(page.current_path).to eq "/outcome"
  end
end
