require 'pry'
module Concerns
  module Findable


    def create(name)
      new(name).tap do |song|
        song.save
      end
    end


    def find_by_name(name)
      all.find{|song| song.name == name}
    end

    def find_or_create_by_name(name)
      find_by_name(name) || create(name)
    end

  end
end
