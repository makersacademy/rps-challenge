feature 'Reasons given for winning' do
  context 'With more weapons, the reason for winning is provided' do
    scenario 'Rock beats lizard via crushing' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
      sign_in_single
      click_button('rock')
      expect(page).to have_content 'rock crushes lizard'
      expect(page).to have_content 'James wins!'
    end

    scenario 'Paper beats spock via disproving' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_single
      click_button('spock')
      expect(page).to have_content 'paper disproves spock'
      expect(page).to have_content 'Computer wins!'
    end

    scenario 'Lizard beats spock via poisoning' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
      sign_in_single
      click_button('lizard')
      expect(page).to have_content 'lizard poisons spock'
      expect(page).to have_content 'James wins!'
    end
  end
end
