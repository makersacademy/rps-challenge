feature 'Result' do
  before do
    allow_any_instance_of(Game).to receive(:random_move).and_return('scissors')
  end

  scenario "Displays both players' moves" do
    enter_name_and_start
    click_button 'Rock'
    expect(page).to have_content('Rock vs Scissors')
  end

  scenario 'Displays winning message if player won' do
    enter_name_and_start
    click_button 'Rock'
    expect(page).to have_content('You won!')
  end

  scenario 'Displays losing message if player lost' do
    enter_name_and_start
    click_button 'Paper'
    expect(page).to have_content('You lost')
  end

  scenario 'Displays draw message if player drew' do
    enter_name_and_start
    click_button 'Scissors'
    expect(page).to have_content('You drew')
  end
end