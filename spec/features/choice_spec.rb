feature "Allows player to choose a RPS option" do
  scenario "player can select rock" do
    visit '/choice'
    click_button 'rock'
    expect(page).to have_content("rock")
  end

  scenario "player can select paper" do
    visit '/choice'
    click_button 'paper'
    expect(page).to have_content("paper")
  end

  scenario "player can select scissors" do
    visit '/choice'
    click_button 'scissors'
    expect(page).to have_content("scissors")
  end
end
