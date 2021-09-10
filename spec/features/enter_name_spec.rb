feature 'Enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :name, with: 'Sophie'
    click_button 'Enter name'
    expect(page).to have_content 'Play Sophie'
  end
  
  scenario 'rock, paper or scissors' do
    visit ('/')
    fill_in :name, with: 'Sophie'
    click_button 'Enter name'
    expect(page).to have_content 'Play Sophie'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end