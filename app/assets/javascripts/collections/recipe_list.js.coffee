@App.Collections.RecipeList = Backbone.Collection.extend
  url: ->
    "/users/#{@userId}/recipes.json"
  model: window.App.Models.Recipe
  initialize: (opts) ->
    @userId = opts.userId


