import {mutations} from '@/store/store'

describe 'mutations', ->

  it 'ADD_COMMENT', ->
    state = {comment: [1,2]}
    mutations.ADD_COMMENT(state, {content; 'Salut'  })
    excpect(state.comments.length).to.equal(3)
