feature 'play game' do
  scenario 'player 1 can choose an action' do
    visit '/'
    click_button("Computer")
    fill_in :player_1, with: "Odin"
    click_button("Submit")
    click_button("Let's go!")
    within('select') { expect(page).to have_content('Rock') }
    within('select') { expect(page).to have_content('Paper') }
    within('select') { expect(page).to have_content('Scissors') }
  end

  scenario 'player 2 can choose an action' do
    visit '/'
    click_button("Friend")
    fill_in :player_2, with: "Zeus"
    click_button("Submit")
    click_button("Let's go!")
    click_button("Submit")
    within('select') { expect(page).to have_content('Rock') }
    within('select') { expect(page).to have_content('Paper') }
    within('select') { expect(page).to have_content('Scissors') }
  end

  scenario 'computer will choose an action' do
    visit '/'
    click_button("Computer")
    fill_in :player_1, with: "Odin"
    click_button("Submit")
    click_button("Let's go!")
    select 'Rock', from: 'player_1_move'
    click_button("Submit")
    expect(page).to have_content("The Computer has chosen: ")
  end

end
