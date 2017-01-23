describe "Feature tests" do
  feature "Players can play" do
    before do
      sign_in_and_play
      choose 'scissors'
      click_button 'Giu!'
    end
    scenario "p1: scissors, p2: paper, p1 win" do
      choose 'paper'
      click_button 'Giu!'
      expect(page).to have_content 'Rob won!'
    end
    scenario "p1: scissors, p2: scissors, p1 win" do
      choose 'scissors'
      click_button 'Giu!'
      expect(page).to have_content 'Game is tied!'
    end
  end
  feature "Player can play against CPU" do
    scenario 'p1: scissors, cpu ???' do
      sign_in_and_play_vs_cpu
      choose 'scissors'
      click_button 'Giu!'
      expect(page).to have_current_path('/game_over')
    end
  end
end
