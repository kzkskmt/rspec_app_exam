FactoryBot.define do
  factory :task do
    title { 'Task_01' }
    # title { 'Task' }
    status { rand(2) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }
    association :project

    trait :due_yesterday do
      project_id { project.id }
      status { :done }
      completion_date { Time.current.yesterday }
    end
  end
end
