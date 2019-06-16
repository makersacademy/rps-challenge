feature "Decide the result" do
  scenario "Player chooses rock which beats scissors" do
    allow_any_instance_of(Computer).to receive(:random_weapon).and_return("Scissors")
    register_name_and_play
    click_link("Rock")    
    expect(page).to have_content("You win!")
  end
end
