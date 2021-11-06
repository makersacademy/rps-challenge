feature 'view move choices' do 
  scenario "see rock" do 
    register_and_play
    expect(page).to have_selector(:link_or_button, 'Rock') 
  end
  scenario "see paper" do 
    register_and_play
    expect(page).to have_selector(:link_or_button, 'Paper') 
  end
  scenario "see paper" do 
    register_and_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
