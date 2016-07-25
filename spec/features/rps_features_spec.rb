feature 'enter name' do
  scenario 'player can enter name' do
    sign_in_to_play
    expect(page).to have_content("Welcome Zeeshan")
  end
end

feature 'choices' do
  scenario 'player has multiple choices' do
    sign_in_to_play
    expect(page).to have_button("rock")
    expect(page).to have_button("paper")
    expect(page).to have_button("scissors")
  end
  scenario 'player choses rock' do
    sign_in_to_play
    click_button "rock"
    expect(page).to have_content("You chose rock")
  end
  scenario 'player choses paper' do
    sign_in_to_play
    click_button "paper"
    expect(page).to have_content("You chose paper")
  end
  scenario 'player choses scissors' do
    sign_in_to_play
    click_button "scissors"
    expect(page).to have_content("You chose scissors")
  end
end
