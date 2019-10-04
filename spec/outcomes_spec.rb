feature 'Tests outcomes' do
  scenario 'Detects a tie?' do
    #I know this will cause computerplayer.move == Rock
    srand 547666
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "It's a tie!"
  end
end

feature 'Tests outcomes' do
  scenario 'Player chooses Rock...player wins' do
    srand 547665
    sign_in_and_play
    puts "Bender's play is #{$computerplayer.move}"
    click_button 'Rock'
    expect(page).to have_content "Adam wins!"
  end
end
