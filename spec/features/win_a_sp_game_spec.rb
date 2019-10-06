feature "win a single player game" do

  scenario "can see a win confirmation when i win" do
    select_sp_and_sign_in
    allow(Kernel).to receive(:rand).and_return(3)
    click_button 'ROCK'
    expect(page).to have_content "WINNER IS JESS!!"
  end

end
