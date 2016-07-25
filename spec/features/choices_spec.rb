feature "Choices" do
  scenario "Player choices rock" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content ('Sarah: Rock')
  end
end
