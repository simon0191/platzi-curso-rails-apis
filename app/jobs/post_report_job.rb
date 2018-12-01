class PostReportJob < ApplicationJob
  queue_as :default

  def perform(user_id, post_id)
    user = User.find(user_id)
    post = Post.find(post_id)
    report = PostReport.generate(post)
    # Do something later
    # user -> report post -> email report
    PostReportMailer.post_report(user, post, report).deliver_now
  end
end
