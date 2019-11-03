feature 'select weapon' do
  scenario 'player selects weapon' do
    name_and_play
    select 'Rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content "Andy, you have selected rock"
  end
end
