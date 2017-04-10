class DrawingLotsController < ApplicationController
    def home
        @arr_result = (1..45).to_a.sample(7) #추첨 결과
        @lotto = @arr_result[0..5].sort * "," #당첨번호
        @bonus = @arr_result[6] #보너스 번호
    end
end
