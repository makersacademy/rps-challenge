feature 'Able to choose between rock, paper, scissors' do

  scenario 'displays your 3 choices' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end

  scenario 'displays your 3 choices' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button, 'Paper')
  end

  scenario 'displays your 3 choices' do
    enter_name_and_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'confirms that Player 2 has been attacked' do
    enter_name_and_play
    click_button('Rock')
    expect(page).to have_content 'You have chosen Rock'
  end

end
