feature 'Confirm' do
  scenario 'After submitting name, click button to go to choose weapon page' do
    sign_in_and_play
    click_button('Choose weapon')
    expect(page).to have_content 'Now choose your weapon'
  end
end
