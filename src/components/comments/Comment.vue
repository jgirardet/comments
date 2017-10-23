<template>
  <div id="comment" class="comment">
    <div class="avatar"><img :src="'http://lorempicsum.com/simpsons/255/200/'+ 1" alt=""></div>
    <div class="content">
      <div class="author">{{comment.name}}
        <span class="metadata">{{comment.email}}</span>
      </div>
      <div class="text">
        {{comment.body}}
      </div>
    </div>
    <div class="actions" @click.prevent="ajouter = !ajouter" v-show="!ajouter"><a href="">ajouter un commentaire</a></div>
    <comment-form v-if="ajouter" :postId="comment.postId"  v-on:envoye="ajouter = !ajouter"></comment-form v-if="ajouter">

  </div>
</template>

<script lang="coffee">
import commentForm from './CommentForm'

export default {

  name: "comment",
  components:
    "comment-form": commentForm
  props:
    comment: Object
    ip: String
  data: ->
    ajouter: false
  computed:
    hideAjouter: ->
      !@ajouter
}
</script>

<style scoped>
</style>
