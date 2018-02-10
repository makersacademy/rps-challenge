feature "Gameplay" do
  scenario "gives player options of rock, paper and scissors" do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
