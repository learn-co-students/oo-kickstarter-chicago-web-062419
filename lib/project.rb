class Project
    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers<<backer
        
        # This line adds this instance of Project to the @backed_projects array in backer.rb.
        backer.backed_projects<<self
    end

end


# p my_project = Project.new("work bench")
# p my_project.add_backer(my_backer)