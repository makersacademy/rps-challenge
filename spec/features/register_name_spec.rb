feature 'Enter name' do
  scenario 'player enters their name' do
    register_to_play
    expect(page).to have_content 'Godzilla are you ready to play?'
  end
end
