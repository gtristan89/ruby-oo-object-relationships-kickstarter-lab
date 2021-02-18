class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        all_backers = ProjectBacker.all.select {|project_backer| project_backer.project == self}
        all_backers.map {|project_backer| project_backer.backer}
    end
end