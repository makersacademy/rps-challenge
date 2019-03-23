feature 'Presented with options' do
  scenario 'When player starts the game they are presented with 3 options' do
    fill_in_name_and_submit
    expect(page).to have_content "Please select an option"
    expect(page).to have_css("input", :count => 3)
  end

  scenario 'When player selects Rock they see that in the response' do
    fill_in_name_and_submit
    click_button "Rock"
    expect(page).to have_content "You selected: Rock"
  end

  scenario 'When player selects an option they can see the computer choice' do
    fill_in_name_and_submit
    click_button "Rock"
    # Can I mock the behaviour of the computer from here?
    expect(page).to have_content "The computer chose"
  end

  scenario 'When player selects Rock check the computer response' do
    fill_in_name_and_submit
    click_button "Rock"
    expect(page).to have_content("The winner is")
  end
end
