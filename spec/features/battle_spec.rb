feature "Player start the battle" do 
  scenario "Player(s) see everyones choice" do 
    battle 
    expect(page).to have_content "Gosho vs Computer\nRock vs "
  end
end
