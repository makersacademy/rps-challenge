feature 'RPS' do

  before do
    visit '/'
    fill_in("Player_1_name", with: 'Mario')
    click_button("Submit")
  end
  scenario 'Can enter ther names' do
    expect(page).to have_content 'Mario'
  end
  scenario 'Can see the moves' do
    visit '/play'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end