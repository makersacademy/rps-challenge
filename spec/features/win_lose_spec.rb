feature 'Win or lose' do

  scenario 'Player wins/loses/draws against computer' do
    fill_in_and_submit
    choose('Rock')
    click_button('OK')
    expect(page).to satisfy {|page| page.has_content?("Congrats! You won!") or page.has_content?("Sorry, you lost!") or page.has_content?("It's a draw!")}
  end

end
