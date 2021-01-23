feature 'Learning the results' do

  scenario 'When I submit rock I am told I won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    enter_name_and_submit
    select "Rock", from: 'choice'
    click_button 'Play'
    expect(page).to have_content "YOU WON!"
  end

  scenario 'the player loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    enter_name_and_submit
    select 'Paper', from: 'choice'
    click_button 'Play'
    expect(page).to have_content "YOU LOST! Try again!"
  end

  scenario 'the game is a draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    enter_name_and_submit
    select 'Scissors', from: 'choice'
    click_button 'Play'
    expect(page).to have_content "IT'S A DRAW!"
  end
end
