#Incomplete test - user unable to see if they have won.

feature 'The result is presented' do
  scenario 'when both computer and player have made their choice' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit('/')
    enter_name_and_submit
    fill_in :player_selection, with: 'rock'
    click_button('Play!')
    expect(page).to have_content 'You won!'
  end
end
