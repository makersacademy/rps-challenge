feature 'computer move' do 
  scenario 'computer randomly selects a move' do 
    register_and_play
    click_button "Rock"
    expect(page).to have_content 'You selected Rock'
    expect(page).to have_content "Computer selected #{@c_move}"
  end
end
  