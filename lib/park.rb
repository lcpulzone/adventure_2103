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

  def visitors_log
    log = {
      1980 => {
          "06/23" => {
            hiker => []
          },
          "06/24" => {
            hiker => [],
            hiker => []
          },
          "06/25" => {
            hiker => []
          }
      },
      2020 => {
          "06/23" => {
            hiker => []
          },
          "06/24" => {
            hiker => [],
            hiker => []
          },
          "06/25" => {
            hiker => []
          }
      }
    }
    @trails.each do |trail|
      log[1980]["06/23"][hiker1] << trail.trails_by_level
      log[1980]["06/24"][hiker2] << trail.trails_by_level
      log[1980]["06/24"][hiker3] << trail.trails_by_level
      log[1980]["06/25"][hiker4] << trail.trails_by_level
      log[2020]["06/23"][hiker1] << trail.trails_by_level
      log[2020]["06/24"][hiker2] << trail.trails_by_level
      log[2020]["06/24"][hiker3] << trail.trails_by_level
      log[2020]["06/25"][hiker4] << trail.trails_by_level
    end
    log
  end
end
