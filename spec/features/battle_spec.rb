feature "Player start the battle" do 
  scenario "Player(s) see everyones choice" do 
    battle 
    expect(page).to have_content "Gosho vs Computer\nRock vs "
  end

  scenario "After the coice display the winner" do 
    battle
    expect(page).to have_content "The Winner is: "
  end

end
