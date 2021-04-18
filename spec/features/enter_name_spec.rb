feature 'Player can enter name' do
  scenario 'Player sees name displayed on the main game page' do
    sign_in_and_play
    expect(page).to have_content "Are you ready to play, Finn?"
  end
end