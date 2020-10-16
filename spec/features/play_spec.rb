feature "rps" do
  scenario "user is greeted with their own name" do
    sign_in
    expect(page).to have_content ("Welcome, Leo!")
  end

  scenario "user gets asked to choose rock, paper or scissors" do
    sign_in
    expect(page).to have_content ("Choose a move!")
  end
end