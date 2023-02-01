
class Map

    def initialize
        @map = Array.new { Array.new(2) }
    end

    def set(key, value)
        if @map.has_key?(key)
            self.delete(key)
        end
        @map << [key, value]
    end

    def has_key?(key)
        @map.each do |sub|
            return true if sub.first == key
        end
        false
    end

    def get(key)
        @map.each do |sub|
            return sub.last if sub.first == key
        end
        false
    end

    def delete(key)
        @map.each do |sub|
            value = sub.last if sub.first == key
        end
        @map.pop([key, value])
    end

    def show
        p @map
    end

end