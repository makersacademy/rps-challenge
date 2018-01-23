feature 'When the user chooses an attack' do
  before do
    allow_any_instance_of(Computer).to receive(:move).and_return :Scissors
    submit_single_name
  end

  scenario 'The player can win against the computer' do
    click_button 'Rock'
    expect(page).to have_content 'Player chose: Rock'
    expect(page).to have_content 'Player WINS!'
  end

  scenario 'The player can tie with the computer' do
    click_button 'Scissors'
    expect(page).to have_content 'Player chose: Scissors'
    expect(page).to have_content 'YOU TIED!'
  end

  scenario 'The player can lose against the computer' do
    click_button 'Paper'
    expect(page).to have_content 'Player chose: Paper'
    expect(page).to have_content 'Computer WINS!'
  end
end
