class MyLogger
  private_class_method :new           #Change accessor from public to private concerning new method
  @@logger = nil
  def MyLogger.create
    @@logger = new unless @@logger    #???
    @@logger
  end
end

puts MyLogger.create().object_id()
puts MyLogger.create().object_id()