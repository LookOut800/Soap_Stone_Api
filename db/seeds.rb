Post.destroy_all
Timeline.destroy_all
User.destroy_all

users = User.create([
  {first_name: 'Charles', last_name: 'Famous', password_digest: '$2a$10$5ypjoIZSHCo.1JZBcIBoFe1AiZ8eD03Bn7Y7MIHGM.Ll6x2r/a/BC', token: 'ca63da06464f4c6f8f33c0ddf254195f', username: 'Charles'},
  {first_name: 'D’Squarius', last_name: 'Green', password_digest: '$2a$10$KoWeUOUlJpeUG.5jdRfr8OZuM.PueGjbggf10KdmAmlRA7VsWjNFC', token: '47343b91822143eebeae5a8c14052c87', username: 'dsquare'}
])

timelines = Timeline.create([{
  title: "50's Design",
  description: "Lots of 50's design stuff yaya"
  }, {
  title: "80's Design",
  description: "Lots of 80's mephis designs"
    }])

posts = Post.create([{
  title: 'Emaes Table',
  body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
},{
  title: 'Eames Chair',
  body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
}])


timeline = timelines.last
timeline.user_id = users.first.id
timeline.save

post1 = Post.last
post2 = Post.first
post1.timeline_id = timeline.id
post1.save
post2.timeline_id = timeline.id
post2.save

