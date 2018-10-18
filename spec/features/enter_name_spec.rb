feature 'Name' do
  scenario 'enters a name and returns a welcome message' do
    visit('/')
    fill_in 'name', with: 'Gizmo'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Gizmo, select a move!'
  end

  scenario 'displays the options for rock, paper, scissors' do
    visit('/')
    fill_in 'name', with: 'Gizmo'
    click_button 'Submit'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
