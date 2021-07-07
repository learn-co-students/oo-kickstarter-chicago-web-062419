class Project

    attr_reader :backers, :title, :add_backer

    def initialize(title)
        @backers = []
        @title = title
    end

    def add_backer(backer)
            @backers << backer
            backer.backed_projects << self
    end

end