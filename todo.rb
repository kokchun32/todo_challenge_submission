# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

class Todo < ActiveRecord::Base



    def self.add(x)
    	# x = ARGV    	
        Task.create(task:x[0..-1].join(" "), status:"Undone")
        numbering
    end
    
    def self.list
        Task.all.each do |l|
            p (l.no.to_s + "." + " " + l.task + " " + "[" + l.status + "]")
    	end
    end

    def self.update(x)
    	y = x[0]
        x = Task.find_by_no(x[0])
        if x == nil
        	puts "Task number '#{y}' is not found. Are you sure that this is the right task number?"
        else
        	x.task = ARGV[1..-1].join(" ")
        	x.save
    	end
    end

    def self.remove(x)
    	y = x[0]
    	x = Task.find_by_no(x[0])
    	if x == nil
    		puts "Task number '#{y}' is not found. Are you sure that this is the right task number?"
    	else
        	x.destroy
    	end
    	numbering
    end

    def self.done(x)
    	y = x[0]
        x = Task.find_by_no(x[0])
        if x == nil
        	puts "Task number '#{y}' is not found. Are you sure that this is the right task number?"
        else
	        x.status = "Done"
	        x.save
	    end
	end


    def self.undone(x)
    	y = x[0]
        x = Task.find_by_no(y[0])
        if x == nil
        	puts "Task number '#{y}' is not found. Are you sure that this is the right task number?"
        else        
	        x.status = "Undone"
	        x.save
	    end
    end

    def self.numbering
    	Task.all.each_with_index do |t, i|
    		t.update(no: i + 1)
    	end
    end
end

# Todo.add(ARGV)
# Todo.update(ARGV)
Todo.remove(ARGV)
# Todo.done(ARGV)
# Todo.undone(ARGV)
Todo.list


