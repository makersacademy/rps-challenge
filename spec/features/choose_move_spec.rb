feature 'player picks their move' do
  scenario 'Player picks rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Josh chose: Rock'
  end
end
