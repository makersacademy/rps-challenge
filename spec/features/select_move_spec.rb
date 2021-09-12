feature " " do
  scenario " " do
    register_name
    click_button "Rock"
    expect(page).to have_content "Gianluca played Rock"
  end
end
