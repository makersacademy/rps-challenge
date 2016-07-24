feature 'Bot plays random gesture' do
  scenario 'Bot plays random gesture' do
    allow(Kernel).to receive(:rand).and_return(3)
    sign_in
    choose('gesture', option: 'lizard')
    click_button('Play')
    expect(page).to have_content('Zhijian played lizard')
  end
end
