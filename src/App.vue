<template>
  <div class="ui container">
    <comments model="Post" :postId="1"></comments model="Post" id="1">
  </div>
</template>

<script lang="coffee">
import HelloWorld from './components/HelloWorld'
import Comments from './components/Comments'



export default
  {
    components:
      "comments": Comments

  }

</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
