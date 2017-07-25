feature 'Click OK on results page' do
  scenario 'returns to play' do
    register_and_play
    select 'Rock', from: 'weapon'
    click_button 'Submit'
    click_button 'OK'
    expect(page).to have_content "Take a pick: "
  end
end
