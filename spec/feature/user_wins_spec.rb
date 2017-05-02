feature 'tells user she/he won' do
  let(:option) { double :option }

  scenario 'the user wins' do
    register
    click_button("Submit your choice")
    allow(option).to receive(:result)
    option.stub(:result).and_return(:option1_wins)
    # allow(option).to receive(:winner).with(option1, option2)
    # allow(option.result).to eq option1_wins
    expect(page).to have_content 'Congrats! You won!'
  end
end
