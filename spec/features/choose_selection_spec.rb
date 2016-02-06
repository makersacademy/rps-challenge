feature 'a player can select from options to play' do

  scenario 'the page has a rock choice' do
    sign_in_and_choose_computer
    click_button('Rock')
    expect(page).to have_content('You selected Rock')
  end

  scenario 'the page has a paper choice' do
    sign_in_and_choose_computer
    click_button('Paper')
    expect(page).to have_content('You selected Paper')
  end

  scenario 'the page has a scissors choice' do
    sign_in_and_choose_computer
    click_button('Scissors')
    expect(page).to have_content('You selected Scissors')
  end

  scenario 'the opponemt is invited to select a choice' do
    sign_in_and_choose_computer
    click_button('Scissors')
    expect(page).to have_content("Now your opponent will choose!")
  end

end
