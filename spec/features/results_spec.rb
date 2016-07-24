feature "shows the results" do
  scenario "after the comptuer selects it's move" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_text "Robert chose"
    expect(page).to have_text "Computer chose"
  end

end
