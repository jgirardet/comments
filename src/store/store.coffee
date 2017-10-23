import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export state =
  comments: []

export mutations =
  ADD_COMMENT: (state, comment) ->
    state.comments.push(comment)


# export default Vuex.Store({state, mutations})
