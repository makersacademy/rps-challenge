describe RPS do
  feature "1. Registration" do
    scenario 'I would like to register my name before playing an online game' do
      sign_in
      expect(page).to have_content "Player 1"
    end
  end

  feature '2. Play' do
    scenario 'I would like to be able to play rock/paper/scissors' do
      allow_any_instance_of(Game).to receive(:rand).and_return(2)
      sign_in_and_choose
      expect(page).to have_content "Fight! Rock vs Scissors Chris W Win!"
    end
  end
end
