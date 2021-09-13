feature 'enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :name, with: 'Ifrah'
    click_button 'Enter Name:'
    expect(page).to have_content 'Player Ifrah'
  end

  scenario 'rock, paper or scissors' do
    visit ('/')
    fill_in :name, with: 'Ifrah'
    click_button 'Enter name:'
    expect(page).to have_content 'Player Ifrah'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
