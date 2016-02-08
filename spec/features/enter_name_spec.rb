
feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Arnold vs. CPU'
  end
end

feature 'Enter names two player' do
  scenario 'submitting names' do
    sign_in_and_play_multiplayer
    expect(page).to have_content 'Arnold vs. Abram'
  end
end
