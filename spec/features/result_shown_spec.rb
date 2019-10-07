feature 'result shown' do
  context 'user is the winner' do
    subject { Result.new("Rock") }
    scenario '-computer shows choice and outputs result' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      visit '/'
      fill_in :player_1, with: 'Sarah'
      click_button 'Submit'
      click_button 'Rock'
      expect(page).to have_content(subject.outcome)
    end
  end
end
