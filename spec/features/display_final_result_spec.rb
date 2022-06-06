feature "displays the game's final result" do 

  feature "player has won against the computer" do 
    scenario "When player plays rock" do 
      allow_any_instance_of(Array).to receive(:sample).and_return "Scissors" 
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "Congratulations! You won, you beat the computer!"
    end 
  end
    

  feature "player has lost against the computer" do 
    scenario "When player plays paper" do 
      allow_any_instance_of(Array).to receive(:sample).and_return "Scissors" 
      sign_in_and_play
      click_button 'Paper'
      expect(page).to have_content "Oh no, you lost! Better luck next time!"
    end
  end 

  feature "player has drew against the computer" do 
    scenario "When player plays scissors" do 
      allow_any_instance_of(Array).to receive(:sample).and_return "Scissors" 
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_content "Oh well, it's a draw!"
    end
  end 
end
