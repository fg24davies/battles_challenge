require 'spec_helper'

feature 'testing entering names' do
  scenario 'players enter their names' do
    visit('/')
    fill_in 'player_1', with: 'Flora'
    fill_in 'player_2', with: 'Jack'
    click_button 'Submit'
    expect(page).to have_content "Excellent! A new fight between Flora and Jack is about to start...Get Ready!"
  end
end  