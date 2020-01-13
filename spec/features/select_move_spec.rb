feature 'Select move' do
  scenario 'Player 1 selects move' do
    sign_in_and_play
    check('scissors')
    expect(page).to have_field('scissors', checked:true)
  end
end
