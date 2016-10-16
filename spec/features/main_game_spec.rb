require "spec_helper"

feature 'Displays Main game page' do
  scenario 'Player has choice of Rock' do
    single_player_login
    select "Rock", :from => "weapon"
  end

  scenario 'Player has choice of Paper' do
    single_player_login
    select "Paper", :from => "weapon"
  end

  scenario 'Player has choice of Scissors' do
    single_player_login
    select "Scissors", :from => "weapon"
  end
end
