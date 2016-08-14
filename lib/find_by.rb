class Module
  def create_finder_methods(*attributes)
    # Your code goes here!
    # Hint: Remember attr_reader and class_eval
    attributes.each do |attribute|
     	find_by_method = %Q{
       		def self.find_by_#{attribute}(para);
         		product_records = self.all
          		product_records.each do |record|
	      			if record.#{attribute} == para
	    				return record
	      			end	
    			end
        	end
      	}
      	class_eval(find_by_method)
    	end
  	end
end
