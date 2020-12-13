describe RPS do
  feature "1. Registration" do
    scenario 'I would like to register my name before plating an online game' do
      sign_in
      expect(page).to have_content "Player 1"
    end
  end

  feature '2. Play' do
    scenario 'I would like to be able to play rock/paper/scissors' do
      sign_in_and_choose
      expect(page).to have_content "Winner!"
    end
  end
end
