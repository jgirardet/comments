<template>
  <div id="comment-form">
    <h3 class="ui header dividing">Ajouter un commentaire</h3>
    <form action="" class="ui form">

      <div class="two fields">
        <div class="ui field ">
          <label  class="ui label" >nom </label>
          <input type="text" name="nom" value="" v-model="nom">
        </div>
        <div class="ui field">
          <label  class="ui label" >mail </label>
          <input type="text" name="mail" value="" v-model="email">
        </div>
      </div>
      <div class="ui field">
        <label  class="ui label">commentaire</label>
        <textarea name="body" rows="8" cols="80" v-model="body"></textarea>
      </div>
      <button class="ui labeled submit icon button" @click.prevent="nouveauComment">
        <i class="edit icon"></i>
        Envoyer
      </button>

  </form>
  </div>
</template>
<script lang="coffee">
import axios from 'axios'


export default {
  name: "comment-form",
  props:
    postId: Number
  data: ->
    email : ''
    body : ''
    nom : ''
  methods:
    nouveauComment: ->
      axios.post('http://localhost:3000/posts', {name: @nom, email:@email, body:@body, postId:@postId})
      .then (response) =>
        console.log(response)
        @$emit("envoye")


}
</script>
<style  scoped>
</style>
