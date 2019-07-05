
# But... do you see the problem? Both sides of this relationship, backer and project, are keeping track of each other, and to maintain consistent data, if one side is updated, the other side should be as well.

# Whenever back_project() is called to update @backed_projects, the project should alsoupdate its @backers list.

# Similarly, whenever add_backer() is called to update @backers, the backer should also update its `@backedprojects` list_.
require 'pry'

class Backer

    attr_accessor :backed_projects, :backers
    attr_reader :name

    def initialize(name)
        @name = name
        @backed_projects = []
    end 

    def back_project(project)
        @backed_projects << project
        project.backers << self
    end 

end

# twitter = Project.new("Twitter")
# grace = Backer.new("Grace")

# abc = grace.add_backer(twitter)

# p abc