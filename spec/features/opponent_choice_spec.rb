feature "Opponent's option" do
  
  scenario 'The opponent randomly choses scissors' do
    srand(5)
    register_name
    click_button("Rock")
    expect(page).to have_content("Opponent chose Scissors")
  end

  scenario 'The opponent randomly choses paper' do
    srand(10)
    register_name
    click_button("Rock")
    expect(page).to have_content("Opponent chose Paper")
  end

  scenario 'The opponent randomly choses rock' do
    srand(15)
    register_name
    click_button("Rock")
    expect(page).to have_content("Opponent chose Rock")
  end
end
