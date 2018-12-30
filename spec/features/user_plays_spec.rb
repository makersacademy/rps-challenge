feature 'Play' do
  scenario 'user can click radio button' do
    sign_in_and_play
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
  end

  scenario 'computer move' do
    sign_in_and_play
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
    visit '/do_play'
    game = RpsGame.new
    @user_move = 'rock'
    @computer_move = game.random_move
    expect(game.random_move).to eq("#{@computer_move}")
  end
end
