require 'spec_helper'

feature 'winning the battle' do
  scenario 'player 1 wins the game' do
    sign_in_and_play
    8.times { click_button "Attaaaaaaack!" }
    expect(page).to have_content "Flora has won the battle!"
  end
end  



