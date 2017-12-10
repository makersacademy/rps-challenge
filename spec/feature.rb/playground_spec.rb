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

  scenario 'should have checkboxes for players to make a choise' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    expect(page).to have_field('checkbox')
  end
end