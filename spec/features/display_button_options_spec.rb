feature 'show buttons' do
  scenario 'it shows rock paper and scissor buttons' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
