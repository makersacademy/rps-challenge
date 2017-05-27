feature 'Enter Player name' do
  scenario 'A player can enter their name' do
    sign_in_and_play
    expect(page).to have_content "Hello Jade, let's play!"
  end
end
