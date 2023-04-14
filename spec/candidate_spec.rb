require './lib/candidate'

RSpec.describe do 
  it 'can initialize with readable attributes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})
    expect(diana).to be_a(Candidate)

    expect(diana.party).to eq(:democrat)
    expect(diana.votes).to eq(0)
  end
end