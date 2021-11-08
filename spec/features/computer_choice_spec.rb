feature 'Computer chooses a play' do
  
  scenario 'Computer selects Scissors at random' do
    srand(5)
    enter_name
    click_button('Rock')
    expect(page).to have_content('Computer chose Scissors')
  end

  scenario 'Computer selects Paper at random' do
    srand(10)
    enter_name
    click_button('Rock')
    expect(page).to have_content('Computer chose Paper')
  end

  scenario 'Computer selects Rock at random' do
    srand(15)
    enter_name
    click_button('Rock')
    expect(page).to have_content('Computer chose Rock')
  end

end