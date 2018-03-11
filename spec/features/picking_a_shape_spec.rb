feature 'picking a shape' do
  scenario 'seeing the options' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Play!'
    expect(page).to have_content "Pick Rock"
    expect(page).to have_content "Pick Paper"
    expect(page).to have_content "Pick Scissors"
  end
end
