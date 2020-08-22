feature "Players start the battle" do 
  
  scenario "Player(s) see everyones choice and the winner" do 
    allow_any_instance_of(Bot).to receive(:choice).and_return("Paper")
    battle 
    expect(page).to have_content "Gosho vs Computer\nRock vs Paper\nThe winner is:\nComputer"
  end

  scenario "Player(s) see everyones choice and they are draw" do 
    allow_any_instance_of(Bot).to receive(:choice).and_return("Rock")
    battle 
    expect(page).to have_content "The game is Daw"
  end

end
