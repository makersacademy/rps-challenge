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
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    fill_in_name_and_submit
    click_button "Rock"
    # Can I mock the behaviour of the computer from here?
    expect(page).to have_content "The computer chose: Scissors"
  end

  scenario 'When player 1 should win' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    fill_in_name_and_submit
    click_button "Rock"
    expect(page).to have_content("The winner is : Sam")
  end

  scenario 'When player 2 should win' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    fill_in_name_and_submit
    click_button "Scissors"
    expect(page).to have_content("The winner is : Computer")
  end

  scenario 'When there should be a drawer' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    fill_in_name_and_submit
    click_button "Paper"
    expect(page).to have_content("The winner is : We are all winners here! The game was a draw!")
  end
end
