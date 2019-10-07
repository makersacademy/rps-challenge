feature 'Selecting a mode' do

  scenario 'Regular' do
    visit "/"
    expect(page).to have_content "Regular"
  end
  scenario 'Hard' do
    visit "/"
    expect(page).to have_content "Hard"
  end
  scenario '1 player' do
    visit "/"
    expect(page).to have_content "1 Player"
  end
  scenario '2 player' do
    visit "/"
    expect(page).to have_content "2 Player"
  end

end
