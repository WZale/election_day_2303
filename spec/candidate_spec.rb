require './lib/candidate'

RSpec.describe do 
  it 'can initialize with readable attributes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})
    expect(diana).to be_a(Candidate)

    expect(diana.party).to eq(:democrat)
    expect(diana.votes).to eq(0)
  end

  it 'has a vote_for! method' do
    diana = Candidate.new({name: "Diana D", party: :democrat})
    
    3.times do 
      diana.vote_for!
    end
    
    expect(diana.votes).to eq(3)
    
    diana.vote_for!
    expect(diana.votes).to eq(4)
  end
end