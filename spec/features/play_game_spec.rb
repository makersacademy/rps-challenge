feature 'Play' do
  scenario 'Play game' do
    visit('/')
    fill_in :name, with: 'Tara'
    click_button 'Submit'
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
