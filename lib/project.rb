require 'pry'
class Project

    attr_reader :backers, :title

    def initialize(title)
        @title = title
        @backers = []
        
    end

    def add_backer(instance)
        @backers << instance
        instance.backed_projects << self
    end
end
