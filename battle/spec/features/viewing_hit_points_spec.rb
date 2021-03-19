require 'spec_helper'

feature 'seeing hit points' do

  scenario 'view player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "Player 2 = Lily, they have 50 hit points"
  end

  scenario 'view player 1\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "Player 1 = Flora, they have 50 hit points"
  end
end  