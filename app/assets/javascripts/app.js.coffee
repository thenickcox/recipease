window.App =
  Models: {}
  Collections: {}
  Views: {}

urlAry = window.location.href.split('/')
userId = urlAry[urlAry.length - 2]
console.log userId

App.Recipe = Backbone.Model.extend()

App.RecipeList = Backbone.Collection.extend
  url: "/users/#{userId}/recipes"
  model: App.Recipe

App.RecipeView = Backbone.View.extend
  el: 'body'
  tagName: 'li'
  events:
    'click button.unfeature' : 'unfeature'
  unfeature: (e)->
    cid = $(e.target).data('unfeatureId')
    console.log $(e.target)
    App.Recipes.get(cid).set('featured', false).save()

App.Recipes = new App.RecipeList
App.Recipes.fetch()


$(window).load ->
  $('span.loading').remove()
  recipes = _.each App.Recipes.models, (model) ->
    new App.RecipeView(model: model)

  _.each recipes, (recipe) ->
    $('#featured_recipes').append(
      "<li><a href='/users/#{recipe.get('user_id')}/recipes/#{recipe.get('id')}'>" +
      recipe.get('name') +
      '</a>' +
      "<button class='unfeature' data-unfeature-id='#{recipe.cid}'>Unfeature <i class='icon-remove-sign'></i></button>" +
      '</li>'
    )

  $('button.unfeature').click ->
    $(this).closest('li').fadeOut('fast')

  if $('ul#featured_recipes li').length is 0
    $('#featured_recipes').html('<p>No featured recipes.</p>')
