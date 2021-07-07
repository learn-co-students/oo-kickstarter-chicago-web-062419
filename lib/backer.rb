class Backer
    attr_reader :name, :backed_projects
    
    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects<<project
        
        # This line adds this instance of Backer to the instance variable @backers in project.rb
        project.backers<<self
    end

end

# p my_backer = Backer.new("Baron")
# p my_backer.back_project(my_project)

