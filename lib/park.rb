class Park
  attr_reader :name,
                   :trails

  def initialize(name)
    @name = name
    @trails = []
  end

  def add_trail(trail)
    @trails << trail
  end

  def trails_shorter_than(length)
    @trails.find_all do |trail|
      trail.length < length
    end
  end

  def hikeable_miles
    @trails.sum do |trail|
      trail.length
    end
  end

  def trails_by_level
    levels = Hash.new { |hash, key| hash[key] = [] }
    @trails.each do |trail, level|
      levels[trail.level] << trail.name
    end
    levels
  end
end
