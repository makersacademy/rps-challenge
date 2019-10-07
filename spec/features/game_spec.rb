
feature 'outcome of the game' do
  scenario "the winner is shown" do
    allow_any_instance_of(Game).to receive(:choice).and_return('Scissors')
    visit '/'
    fill_in :name, with: 'Kaja'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content('Rock wins!')
  end
  scenario "a draw is shown" do
    allow_any_instance_of(Game).to receive(:choice).and_return('Rock')
    visit '/'
    fill_in :name, with: 'Kaja'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content("It's a draw!")
  end
end
