feature '#register' do
  context '> single player' do
    scenario '>name of player on index page' do
      sign_in_single_player
      expect(page).to have_content("Hi, Name. Rock, paper, scissors?")
    end
  end

  context '> multi-player' do
    scenario '>name of players on index page' do
      sign_in_multi_player
      expect(page).to have_content("P1 vs P2. Rock, paper, scissors?")
    end
  end
end
