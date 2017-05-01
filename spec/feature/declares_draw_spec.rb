feature 'declares a draw' do
  let(:option) { double :option }

  scenario 'the user wins' do
    register
    click_button("Submit your choice")
    allow(option).to receive(:result)
    option.stub(:result).and_return(:draw)
    # allow(option).to receive(:winner).with(option1, option2)
    # allow(option.result).to eq option1_wins
    expect(page).to have_content "It's a draw!"
  end
end
