feature 'Getting player name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Let's go, Omni-Man!"
  end
end 