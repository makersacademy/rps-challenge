
feature 'Enter names two player' do
  scenario 'submitting names' do
    sign_in_and_play_multiplayer
    expect(page).to have_content 'Arnold vs. Abram'
  end
end
