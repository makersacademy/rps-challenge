feature 'Declaring a winner' do
  scenario 'It will declare a draw if both players make the same move' do
    submit_one_player_name
    Game.instance.player_2.stub(:make_move => "Rock")
    click_button "Rock"
    expect(page).to have_content "It's a Draw!"
  end
end
