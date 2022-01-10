feature 'play' do
  scenario 'displays choices' do
    enter_names
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
