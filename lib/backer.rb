require 'pry'

class Backer

    attr_reader :backed_projects, :name, :back_project

    def initialize (name)
        @backed_projects = []
        @name = name
    end

    def back_project (project)
        if @backed_projects.include?(project)
            return
        else 
            @backed_projects << project
            project.add_backer(self)
        end
    end

end
