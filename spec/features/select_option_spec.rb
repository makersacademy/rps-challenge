feature 'The user can select an option' do
  scenario 'selects rock' do
    sign_in_and_play
    find_button('Rock').click
  end
  scenario 'selects paper' do
    sign_in_and_play
    find_button('Paper').click
  end
  scenario 'selects scissors' do
    sign_in_and_play
    find_button('Scissors').click
  end
end
