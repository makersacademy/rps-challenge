feature 'Game registration' do
  scenario 'Player registers their name' do
    sign_in_and_play
    expect(page).to have_content("Welcome Tom! - You are ready to Rock!... (or Paper/Scissors)")
  end
end
