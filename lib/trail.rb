class Trail
  attr_reader :name,
                   :length,
                   :level

  def initialize(trail_params)
    @name = trail_params[:name]
    @length = trail_params[:length].to_f
    @level = trail_params[:level]
  end
end
