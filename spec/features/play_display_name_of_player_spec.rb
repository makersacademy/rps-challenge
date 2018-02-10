feature 'page displays name of the player' do
  scenario 'visible name of the player' do
    sign_in_and_play
    expect(page).to have_content('Justyna vs. Computer')
  end
end
