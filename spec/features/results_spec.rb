feature 'Results' do
  let(:player_name) { random_string }
  before { sign_in_and_play player_name }

  context 'opponent chooses rock' do
    before { allow_any_instance_of(Array).to receive(:sample).and_return(:rock) }
    scenario 'has both players choices and the result' do
      choose_and_submit 'rock'
      expect(page).to have_content("#{player_name} chose rock")
      expect(page).to have_content("Computer chose rock")
      expect(page).to have_content("You draw!")
    end
  end
end