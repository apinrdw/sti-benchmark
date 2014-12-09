class Post < ActiveRecord::Base
  private
  def self.benchmark
    sti = Benchmark.measure do
      (1..10000).each { Post.order(created_at: :desc).group(:type) }
    end
    puts "With STI: #{sti}"

    no_sti = Benchmark.measure do
      (1..10000).each {
        Page.order(created_at: :desc)
        Tutorial.order(created_at: :desc)
      }
    end
    puts "Without STI: #{no_sti}"
  end
end
