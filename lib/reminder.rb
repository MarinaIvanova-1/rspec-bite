class Reminder
  def initialize(name)
    @name = name
  end

  def remind_me_to(task)
    @task = task
  end

  def remind()
    #adding a failure if there's no reminder yet
    fail "No reminder set!" if @task.nil?
    return "#{@task}, #{@name}!"
  end
end