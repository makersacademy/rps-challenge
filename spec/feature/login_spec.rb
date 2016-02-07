feature 'log in and display names' do
  scenario 'displays names in battle' do
    sign_in_and_play_sheldon
    expect(page).to have_content 'Player1 vs. Sheldon'
  end


end
