Teams.allow
	insert: (userId, doc) ->
		userId
	update: (userId, docs, fields, modifier) ->
		_.all docs, (doc) ->
			userId
	remove: (userId, docs) ->
		_.all docs, (doc) ->
			userId

Meteor.publish "team", ->
	return Teams.find()