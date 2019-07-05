# When a Project instance is initialized, it should be initialized with a @backers variable set to an empty array. Instances of the Project class should have an attr_reader for backers. This way, a project can report on who its backers are.

require 'Pry'

class Project

    attr_accessor :backers, :backed_projects
    attr_reader :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
        # binding.pry
        # back_project(self)
    end

end