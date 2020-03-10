feature "computer's move" do

  scenario 'computer selects a move' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content "Computer selects #{@p2_move}"
  end

end
