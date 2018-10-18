feature 'The user can select an option' do
  scenario 'selects rock' do
    sign_in_and_play
    find_button('Rock').click
    expect(page).to have_content "Your move was rock"
  end
  scenario 'selects paper' do
    sign_in_and_play
    find_button('Paper').click
    expect(page).to have_content "Your move was paper"
  end
  scenario 'selects scissors' do
    sign_in_and_play
    find_button('Scissors').click
    expect(page).to have_content "Your move was scissors"
  end
end
