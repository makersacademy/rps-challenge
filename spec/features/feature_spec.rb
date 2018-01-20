feature 'Sign-in' do
  scenario 'Player enters their name and this is displayed on-screen' do
    enter_name_and_submit 
    expect(page).to have_content("Welcome to Rock, Paper, Scissors Ed")
  end
end

feature 'Making a move' do
  scenario 'Player is presented with a choice of moves' do
    enter_name_and_submit 
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'Player chooses move and gets confirmation' do
    enter_name_and_submit 
    click_button 'Rock'
    expect(page).to have_content("Ed chose rock!")
  end

  scenario 'Computer makes a choice and player sees its selection' do
    allow_any_instance_of(Computer).to receive(:move).and_return(:paper)
    enter_name_and_submit 
    click_button 'Rock'
    expect(page).to have_content("Computer chose paper!")
  end
end

feature 'Determining winner' do
  scenario 'Computer chooses winning move and player is told they lost' do
    allow_any_instance_of(Computer).to receive(:move).and_return(:paper)
    enter_name_and_submit 
    click_button 'Rock'
    expect(page).to have_content("Computer won!")
  end

  scenario 'Player chooses winning move and is told they won' do
    allow_any_instance_of(Computer).to receive(:move).and_return(:scissors)
    enter_name_and_submit 
    click_button 'Rock'
    expect(page).to have_content("Player won!")
  end
end