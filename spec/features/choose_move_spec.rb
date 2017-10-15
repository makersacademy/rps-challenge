feature 'takes users name and returns new route displaying their name and move options' do
  scenario 'user chooses a move' do
    visit '/'
    fill_in :player_name, with: "Edward"
    click_button "Submit"
    within('form') { expect(page).to have_button('Rock') }
    within('form') { expect(page).to have_button('Paper') }
    within('form') { expect(page).to have_button('Scissors') }
  end
end
