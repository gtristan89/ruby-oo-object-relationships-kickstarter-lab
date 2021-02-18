require 'pry'

class Backer
    attr_accessor :name, :back_project
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        all_project_backers = ProjectBacker.all.select {|project_backer| project_backer.backer == self}
        all_project_backers.map {|project_backer| project_backer.project}
    end
end 