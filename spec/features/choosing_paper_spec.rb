feature "Choosing paper" do
  scenario "confirms player chose paper" do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content("Imtiyaz chose Paper")
  end
end
