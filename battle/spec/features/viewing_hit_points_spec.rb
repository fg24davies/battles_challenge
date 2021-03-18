require 'spec_helper'

feature 'seeing hit points' do
  before do visit('/')
    fill_in 'player_1', with: 'Flora'
    fill_in 'player_2', with: 'Lily'
    click_button 'Submit'
  end
  scenario 'view the other players hit points' do
    # click_button 'Lily\'s Hit Points'
    expect(page).to have_content "Player 2 = Lily, they have 50 hit points"
  end
end  