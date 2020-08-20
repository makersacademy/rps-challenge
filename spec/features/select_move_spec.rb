feature 'selecting a move' do
  scenario 'can pick a move' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Dummy picked Rock'
  end
end