feature 'takes users name and returns new route displaying their name and move options' do
  scenario 'user views a moves' do
    sign_in_and_play
    within('form') { expect(page).to have_button('Rock') }
    within('form') { expect(page).to have_button('Paper') }
    within('form') { expect(page).to have_button('Scissors') }
  end
end
