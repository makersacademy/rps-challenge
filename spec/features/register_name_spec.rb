feature 'Register for game' do
  scenario 'registering name to start the game' do
    register_and_play
    expect(page).to have_content 'Registeration confirmed, get ready...Ruan'
  end
end
