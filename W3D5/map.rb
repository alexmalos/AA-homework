class Map
    def initialize
        @my_map = []
    end

    def set(key, value)
        idx = @my_map.index { |pair| pair.first == key }
        if idx == nil
            @my_map << [key, value]
        else
            @my_map[idx][-1] = value
        end
    end

    def get(key)
        @my_map.each { |pair| return pair.last if pair.first == key }
        nil
    end

    def delete(key)
        @my_map.delete_if { |pair| pair.first == key }
    end

    def show
        @my_map
    end
end