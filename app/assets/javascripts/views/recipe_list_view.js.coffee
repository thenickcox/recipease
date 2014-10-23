@App.Views.RecipeListView = Backbone.View.extend
  el: '#featured_recipes'

  initialize: ->
    this.listenToOnce(App.recipeList, 'sync', @addAll)
    App.recipeList.fetch()

  addAll: ->
    $('.loading').hide()
    if App.recipeList.length is 0
      $('#featured_recipes').html '<p>No featured recipes.</p>'
    App.recipeList.each (recipe) =>
      @addOne(recipe)

  addOne: (recipe) ->
    view = new App.Views.RecipeView(model: recipe)
    @$el.append(view.render().el)

