feature "Enter attack method" do
  scenario "submits attack choice" do
    sign_in_and_play
    fill_in :attack_method, with: "Rock"
    click_button "Attack"
    expect(page).to have_content("Result:")
  end
end
