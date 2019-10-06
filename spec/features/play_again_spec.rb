feature "allows player to play again" do
  scenario 'takes player back to play another round' do
    play_single
    choose(option: "Rock")
    click_button('Play')
    expect(page).to have_button 'Next Round'
  end
end
