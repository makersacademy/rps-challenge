feature 'Expect AI to pick move' do
  scenario 'tests AI gets assigned a move' do
    srand 547666
    sign_in_and_play
    click_button 'Paper'
    puts "#{$computerplayer.name} picked #{$computerplayer.move}"
    expect(page).to have_content "Bender's move: Rock"
  end
end
