feature 'Playing the game' do
  scenario "When I submit 'Rock' and computer has scissors I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    submit_name
    click_button 'rock'
    expect(page).to have_content "You won"
  end
  scenario "When I submit 'Rock' and computer picks paper I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    submit_name
    click_button 'rock'
    expect(page).to have_content "You lost"
  end
  scenario "When I submit 'Rock' and computer picks paper I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    submit_name
    click_button 'rock'
    expect(page).to have_content "You had a draw"
  end
end
