class Race
  attr_reader :office,
              :candidates

  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate)
    registered_candidate = Candidate.new(candidate)
    @candidates << registered_candidate
    registered_candidate
  end
end