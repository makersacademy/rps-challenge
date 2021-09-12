feature "Result" do

  scenario "lands in the results page" do
    register_name
    click_button "Rock"
    expect(page).to have_content "Les jeux sont faits"
  end
end