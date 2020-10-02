require 'spec_helper.rb'

feature 'Can visit the home page' do
  it 'The page have content' do
    visit '/'
    expect(page).to have_content("Do you want to play Rock Paper Scissors ?")
  end

  it 'Page shows Multiplayer' do
    visit '/'
    expect(page).to have_content("Multiplayer")
  end

  it 'Page shows Player vs Computer' do
    visit '/'
    expect(page).to have_content("Player vs Computer")
  end

  it 'Can choose to play multiplayer' do
    visit '/'
    click_link 'Multiplayer'
    expect(page.current_path). to eq "/namesplaymulti"
  end

  it 'Can choose to play multiplayer' do
    visit '/'
    click_link 'Player vs Computer'
    expect(page.current_path). to eq "/namesplaysingle"
  end
end
