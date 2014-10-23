@App.Views.RecipeView = Backbone.View.extend
  tagName: 'li'
  templ: JST['templates/item_template']
  events:
    'click button.unfeature' : 'unfeature'
  unfeature: ->
    @model.set(featured: false, {silent: true})
    @model.save()
    @$el.remove()
    if $('#featured_recipes').children('li').length is 0
      $('#featured_recipes').html '<p>No featured recipes.</p>'
  render: ->
    @$el.html(@templ(@model.attributes))
    @

