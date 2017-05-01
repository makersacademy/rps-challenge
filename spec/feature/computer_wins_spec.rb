feature 'Computer wins, user loses' do
  let(:option) { double :option }

  scenario 'the user loses' do
    register
    click_button("Submit your choice")
    allow(option).to receive(:result)
    option.stub(:result).and_return(:option2_wins)
    # allow(option).to receive(:winner).with(option1, option2)
    # allow(option.result).to eq option1_wins
    expect(page).to have_content 'Oh, no! A computer beat you!'
  end
end
