class DrawingLotsController < ApplicationController
    def home
        @arr_result = (1..45).to_a.sample(7) #추첨 결과
        @lotto = @arr_result[0..5].sort #당첨번호
        @color = Array.new
        @lotto.each do |number|
          @col = case number
            when 1..10 then "orange"
            when 11..20 then "blue"
            when 21..30 then "red"
            when 31..40 then "gray"
            when 41..45 then "green"
          end
          @color.push(@col+" d-flex justify-content-center")
        end
        @bonus = @arr_result[6] #보너스 번호
        @bonus_color = case @bonus
          when 1..10 then "orange"
          when 11..20 then "blue"
          when 21..30 then "red"
          when 31..40 then "gray"
          when 41..45 then "green"
        end
        @bonus_color += " d-flex justify-content-center"
    end
end
