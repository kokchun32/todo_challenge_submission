# require_relative '../../config/application'

class Task < ActiveRecord::Base
	Task.all
end

# 	def self.add(tsk)
# 		tsk = ARGV
# 		task = Task.create(task: "#{tsk}".join(" "), status: "Undone")
# 	end

# 	def self.list
# 		p Task.all
# 	end

# 	def self.update(no, description, stat)
# 		task = Task.find("#{no}")
# 		task.task = description
# 		task.status = stat
# 		task.save
# 	end

# 	def self.remove(no)
# 		task = Task.find("#{no}")
# 		task.destroy
# 	end

# end

# Task.remove(1)
