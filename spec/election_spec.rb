require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe do
  it 'can intialize with readable attributes' do
    election1 = Election.new("2024")
    expect(election1.class).to eq(Election)

    expect(election1.year).to eq("2024")
    expect(election1.races).to eq([])
    expect(election1.candidates).to eq([])
    expect(election1.vote_counts).to eq({})
  end

  it 'has an add_race method' do
    election1 = Election.new("2024")
    
    race1 = election1.add_race("Texas Governor")

    expect(race1.class).to eq(Race)
    expect(race1.office).to eq("Texas Governor")
  end
end