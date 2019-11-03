feature 'Buttons' do
  scenario 'the player can choose among three options' do
    intro_steps
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
