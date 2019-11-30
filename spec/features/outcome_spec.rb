feature "shows the winner" do

  scenario "it shows that the player won if player chooses paper and bot chooses rock" do
    srand(2)
    sign_in
    click_on('Paper')
    expect(page).to have_content "Jimmy wins!!!"
  end

  scenario "it shows that the bot won if player chooses paper and bot chooses scissors" do
    srand(3)
    sign_in
    click_on('Paper')
    expect(page).to have_content "Botman wins!!!"
  end

  scenario "it shows a draw if player chooses paper and bot chooses paper" do
    srand(1)
    sign_in
    click_on('Paper')
    expect(page).to have_content "It's a draw!"
  end

end
