feature 'Selecting move' do
  scenario 'three moves show' do
    start_playing
    expect(page).to have_select('move', :options => ['Rock', 'Paper','Scissors'])
  end
  scenario 'submitting shows move' do
    start_playing
    select('Rock', from: 'move')
    click_button 'Do it!'
    expect(page).to have_content "rock"
  end
end