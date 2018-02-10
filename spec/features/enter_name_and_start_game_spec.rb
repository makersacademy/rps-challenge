feature 'Enter name and click start game' do
  scenario 'Go to game view' do
    sign_in_and_play
    expect(page).to have_content "Hi, Matt. Let's play!"
  end
end
