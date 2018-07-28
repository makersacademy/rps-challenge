feature 'Register:' do
  scenario 'player can enter name' do
    sign_in_and_play
    expect(page).to have_content 'Mufasa vs Computer'
  end
end
