feature 'Game results' do
  scenario 'show that someone wins' do
    start_playing
    choose_rock
    expect(page).to have_content "wins!"
  end
  scenario 'show that someone wins' do
    start_playing
    choose_rock
    expect(page).to have_content "wins!"
  end 
end
