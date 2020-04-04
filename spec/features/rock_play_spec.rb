feature 'Player plays Rock' do
  scenario 'Player registers and plays Rock' do
    sign_in_and_play
    click_on("ROCK!!")
    expect(page).to have_content("You have played Rock. The computer played:");
  end
end
