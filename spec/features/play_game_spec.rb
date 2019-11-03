feature 'play game' do
  scenario 'player 1 can choose an action' do
    visit '/'
    click_button("Computer")
    fill_in :player1, with: "Ellie"
    click_button("Submit")
    click_button("Let's go!")
    within('select') { expect(page).to have_content('Rock') }
    within('select') { expect(page).to have_content('Paper') }
    within('select') { expect(page).to have_content('Scissors') }
  end

  scenario 'player 2 can choose an action' do
    visit '/'
    click_button("Friend")
    fill_in :player2, with: "Jack"
    click_button("Submit")
    click_button("Let's go!")
    click_button("Submit")
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
