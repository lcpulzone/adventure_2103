class Hiker
  attr_reader :name,
                   :experience_level,
                   :snacks,
                   :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = Hash.new { |hash, key| hash[key] = 0 }
    @parks_visited = []
  end

  def pack(snack, amount)
    @snacks[snack] += amount
  end

  def visit(park)
    @parks_visited << park
  end

  def possible_trails
    @parks_visited.flat_map do |park|
      park.trails.find_all do |trail|
        trail.level == experience_level
      end
    end
  end

  def favorite_snack
    fav = @snacks.max_by do |snack, amount|
      amount
    end
    fav[0]
  end
end
