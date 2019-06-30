class Project
  attr_reader :title
  attr_accessor :backers, :project


  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
