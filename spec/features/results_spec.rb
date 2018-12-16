feature 'Declaring a winner' do
  background { sign_in_and_play }

  context 'player 1 chooses rock' do
    scenario 'player 1 wins' do
      srand(3)
      choose_rock_and_submit

      expect(page).to have_content 'The winner is ... Gon!'
    end

    scenario 'player 1 loses' do
      srand(1)
      choose_rock_and_submit

      expect(page).to have_content 'The winner is ... CPU!'
    end

    scenario 'player 1 ties' do
      srand(2)
      choose_rock_and_submit

      expect(page).to have_content 'The winner is ... Draw!'
    end
  end
end
