# declaring the result page

feature 'results page' do
  scenario 'correct display on screen' do
    begin_and_submit
    click_button 'START!'
    click_button 'rock'
    expect(page).to have_content("Please press start to play again...")
  end
end

feature 'results page' do
  scenario 'correct drawn result on screen' do
    allow_any_instance_of(Computer).to receive(:random_move).and_return('rock')
    begin_and_submit
    click_button 'START!'
    # select('rock', from: 'choice')
    click_button 'rock'
    expect(page).to have_content("A DRAW!")
  end
end
