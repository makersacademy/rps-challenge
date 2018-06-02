feature 'Play game' do
  scenario 'player chooses rock' do
    sign_in_and_play
    choose(option: "rock")
    click_button "Confirm choice"
    expect(page).to have_content 'You chose rock'
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    choose(option: "paper")
    click_button "Confirm choice"
    expect(page).to have_content 'You chose paper'
  end

  scenario 'player chooses scissors' do
    sign_in_and_play
    choose(option: "scissors")
    click_button "Confirm choice"
    expect(page).to have_content 'You chose scissors'
  end
end
