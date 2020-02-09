feature 'Selecting move' do
  scenario 'three moves show' do
    start_playing
    expect(page).to have_select('move', :options => ['Rock', 'Paper','Scissors'])
  end
end