class Team
  attr_accessor :team

  def initialize(params)
    @team = params[:team]
  end
end