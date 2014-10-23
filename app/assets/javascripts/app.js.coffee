$ ->
  urlAry = window.location.href.split('/')
  userId = urlAry[urlAry.length - 2]
  App = window.App
  App.recipeList = new App.Collections.RecipeList(userId: userId)
  App.recipeListView = new App.Views.RecipeListView

