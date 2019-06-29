class Project

    attr_reader :backers, :title, :add_backer

    def initialize(title)
        @backers = []
        @title = title
    end

    def add_backer(backer)
        if @backers.include?(backer)
            return
        else
            @backers << backer
            backer.back_project(self)
        end
    end

end