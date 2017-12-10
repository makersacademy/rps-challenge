feature 'playground' do

  scenario 'should have names of players' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    expect(page).to have_content('Player1')
  end

  scenario 'should have names of players' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    expect(page).to have_content('Player2')
  end

  scenario 'should have checkboxes for players to make a choice' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    expect(page).to have_field('player1_select')
  end

  scenario 'should save player choice' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    select 'Rock', from: 'player1_select'
    select 'Rock', from: 'player2_select'
    click_button('results')
    expect(page).to have_content("IT'S A DRAW!")
  end
end