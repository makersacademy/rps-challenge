feature 'move' do 
  scenario 'selects the Rock move' do 
    register_and_play
    click_button "Rock"
    expect(page).to have_content 'You selected Rock'
  end
  scenario 'selects the Paper move' do
    register_and_play
    click_button "Paper"
    expect(page).to have_content "You selected Paper"
  end
  scenario 'selects the Scissors move' do
    register_and_play
    click_button "Scissors"
    expect(page).to have_content "You selected Scissors"
  end
end
