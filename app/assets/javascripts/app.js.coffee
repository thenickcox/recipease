window.App =
  Models: {}
  Collections: {}
  Views: {}

urlAry = window.location.href.split('/')
userId = urlAry[urlAry.length - 2]

App.Models.Recipe = Backbone.Model.extend()

App.Collections.RecipeList = Backbone.Collection.extend
  url: "/users/#{userId}/recipes"
  model: App.Models.Recipe

App.Views.RecipeListView = Backbone.View.extend
  el: '#featured_recipes'
  render: =>
    return this

  initialize: ->
    this.listenToOnce(App.recipeList, 'sync', this.addAll)
    App.recipeList.fetch success: ->
      $('.loading').hide()

  addAll: ->
    App.recipeList.each (recipe) =>
      @addOne(recipe)

  addOne: (recipe) ->
    view = new App.Views.RecipeView(model: recipe)
    @$el.append(view.render().el)

App.Views.RecipeView = Backbone.View.extend
  tagName: 'li'
  template: _.template("<a href='/users/#{userId}/recipes/<%= id %>'><%= name %></a><button class='unfeature'>Unfeature</button>")
  events:
    'click button.unfeature' : 'unfeature'
  unfeature: ->
    @model.set(featured: false, {silent: true})
    @model.save()
    @$el.remove()
  render: ->
    @$el.html(@template(@model.attributes))
    @

$ ->
  App.recipeList = new App.Collections.RecipeList
  App.recipeListView = new App.Views.RecipeListView

