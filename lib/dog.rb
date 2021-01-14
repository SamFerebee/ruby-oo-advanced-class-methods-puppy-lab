class Dog

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each {|dog| puts dog.name}
    end

    def self.clear_all
        self.all.clear
    end

    def save
        @@all.push(self)
    end

end