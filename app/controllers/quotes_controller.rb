class QuotesController < ApplicationController
    def Quote
      random_offset = rand(Quote.count - 1)
      @random_quote = Quote.offset(random_offset).first
    end

    def search
      #respond with json
      @quotes = Quote.sample

      render :json => @quote
    end

    def random
      #get random quote
      #respond with json
      
    end
end
