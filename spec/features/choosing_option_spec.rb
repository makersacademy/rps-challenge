feature "Choosing an option" do
  let(:choices) { Computer::CHOICES }

  scenario "choose a play option" do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose: Rock'
	end

  scenario "computer can choose a random option" do
    register_and_play
    click_button 'Rock'
		allow(choices).to receive(:sample).and_return([:rock])
		expect(page).to have_content 'Computer chose: Rock'
	end
end