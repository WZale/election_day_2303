class Election
  attr_reader :year,
              :races,
              :candidates,
              :vote_counts

  def initialize(year)
    @year = year
    @races = []
    @candidates = []
    @vote_counts = {}
  end

  def add_race(race)
    new_race = Race.new(race)
    @races << new_race
    new_race
  end
end