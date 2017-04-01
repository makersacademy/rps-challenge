feature 'Win or lose' do

  scenario 'Player wins or loses the game' do
    fill_in_and_submit
    choose('Rock')
    click_button('OK')
    expect(page).to have_content(/'Congrats! You won!'|'Sorry, you lost!'/)
  end

end
