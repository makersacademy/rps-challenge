feature 'selecting a move' do
  scenario 'can pick a move' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Dummy picked rock'
  end
end
