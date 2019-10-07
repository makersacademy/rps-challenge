feature 'Declare winner' do
  scenario 'displays if game wins the game' do
    sign_in_and_play
    fill_in :choice, with: 'Rock'
    expect_any_instance_of(Game).to receive(:random_option) {"Paper"}
    click_button 'Play'
    expect(page).to have_content "Game wins!"
  end

  scenario 'displays if player wins the game' do
    sign_in_and_play
    expect_any_instance_of(Game).to receive(:random_option) {"Paper"}
    fill_in :choice, with: 'Scissors'
    click_button 'Play'
    expect(page).to have_content "You win!"
  end
end
