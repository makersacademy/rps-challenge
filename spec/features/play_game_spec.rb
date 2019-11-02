feature 'play game' do
  scenario 'player can choose an action' do
    visit '/'
    fill_in :playername, with: "Ellie"
    click_button("Submit")
    click_button("Let's go!")
    within('select') { expect(page).to have_content('Rock') }
    within('select') { expect(page).to have_content('Paper') }
    within('select') { expect(page).to have_content('Scissors') }
  end
end
