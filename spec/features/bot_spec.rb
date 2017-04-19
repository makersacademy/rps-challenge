feature 'Bot AI' do
  scenario 'Bot plays random gesture' do
    allow(Kernel).to receive(:rand).and_return(3)
    sign_in
    choose('gesture', option: 'lizard')
    click_button('Play')
    expect(page).to have_content('Zhijian played lizard')
  end

  scenario 'Bot plays more humanistically' do
    sign_in
    choose('gesture', option: 'lizard')
    click_button('Play')
    # how to test this
  end
end
