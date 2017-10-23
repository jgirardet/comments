<template>
  <div id="comments" class="ui comments">
    <!-- <comments :comment="comment" :ip="ip"></comments> -->
    <comment :comment="comment" :ip="ip" v-for="comment in comments" :key="comment.id"></comment>
    <comment-form :postId="postId"></comment-form>
  </div>
</template>
<script lang="coffee">
import axios from 'axios'
import Comment from './comments/Comment'
import commentForm from './comments/CommentForm'
import HelloWorld from '@/store/HelloWorld'
import store from '@/store/store'


export default {
  name: "comments",
  components:
    "comment": Comment
    "comment-form": commentForm
  props:
    postId: Number
    model: String
    ip: String
  data: ->
    comments: []
  created: ->
    axios.get('http://localhost:3000/posts', {params: {postId: @postId, type:@model}})
    .then (response) =>
      @comments = response.data
  }
</script>
<style scoped>
</style>
