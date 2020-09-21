class First
    def another
        (1..5).each do |i| 
            (1..5).each do |j|
                if j>=i
                    print("*")
                
                else
                    print(" ")
            end
            
        end
    end
end

a =First.new
a.another