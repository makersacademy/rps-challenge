feature 'One Player Set Up' do

  scenario 'chooses 1 player mode and enters name' do
    one_player_battle_setup
    expect(page).to have_content 'Sir R Spec'
  end

end
