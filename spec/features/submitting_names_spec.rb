feature 'Enter name' do
  scenario 'player submits name' do
    sign_in_and_play
    expect(page).to have_content "Ready to play, Yadira?"
  end
end
