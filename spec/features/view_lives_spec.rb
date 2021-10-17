
feature 'View lives' do
  scenario 'shows the number of lives that Player 1 has to start' do
    sign_in_and_play
    expect(page).to have_content 'Tim: 1 life'
  end

  scenario 'shows the number of lives that the Computer has to start' do
    sign_in_and_play
    expect(page).to have_content 'Computer: 1 life'
  end
end
