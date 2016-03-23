feature "Enter player" do
  scenario "solo player enters name" do
    single_sign_in
    expect(page).to have_content "Mittens vs Computer"
  end

  scenario "two players enter names" do
    double_sign_in
    expect(page).to have_content "Mittens vs Fluffy"
  end
end
