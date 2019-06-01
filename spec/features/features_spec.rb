feature 'Allow player to fill in name in a form' do
  scenario 'Can submit form with username' do
    sign_in_and_play
    expect(page).to have_content 'Ollie'
  end
  scenario 'Can display turn choices' do
    sign_in_and_play
    expect(page).to have_content 'Make your choice - rock, paper or scissors?'
  end
end

feature 'Turn' do
  scenario 'Allow player to fill in turn choice in a form' do
    sign_in_and_play
    fill_in 'player_move', with: 'rock'
    click_button "Submit"
    expect(page).to have_content 'You have chosen rock'
  end
end
