feature "Choosing rock" do
  scenario "confirms player chose rock" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Imtiyaz chose Rock")
  end
end
