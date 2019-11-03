feature 'play game' do
  scenario 'player can choose an action' do
    visit '/'
    fill_in :player1, with: "Ellie"
    click_button("Submit")
    click_button("Let's go!")
    within('select') { expect(page).to have_content('Rock') }
    within('select') { expect(page).to have_content('Paper') }
    within('select') { expect(page).to have_content('Scissors') }
  end

# only relevant if playing against the computer
#   scenario 'computer will choose an action' do
#     visit '/'
#     fill_in :player1, with: "Ellie"
#     click_button("Submit")
#     click_button("Let's go!")
#     select 'Rock', from: 'move'
#     click_button("Submit")
#     expect(page).to have_content("Computer has chosen: ")
#   end

end
