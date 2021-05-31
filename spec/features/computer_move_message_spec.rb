feature "Show the computer's move" do
  scenario 'once the player selects their move the page shows the computer move' do
    allow_any_instance_of(Computer).to receive(:rand).and_return(1)
    sign_in_and_play
    choose("move", option: "Rock")
    click_button('Sarah\'s move')
    expect(page).to have_content "The computer has selected Paper"
  end
end 
