<script>
import { ref } from 'vue'
import { reactive, computed, watch } from 'vue'
export default {
  name: 'MyDemoComponent',
  setup() {
    const question = ref('')
    const answer = ref('Questions usually contain a question mark. ;-)')
    const loading = ref(false)

    // watch works directly on a ref
    watch(question, async (newQuestion, oldQuestion) => {
      if (newQuestion.includes('?')) {
        loading.value = true
        answer.value = 'Thinking...'
        try {
          const res = await fetch('https://yesno.wtf/api')
          answer.value = (await res.json()).answer
        } catch (error) {
          answer.value = 'Error! Could not reach the API. ' + error
        } finally {
          loading.value = false
        }
      }
    })

    const obj = reactive({ count: 0 })

    watch(obj, (newValue, oldValue) => {
      // fires on nested property mutations
      // Note: `newValue` will be equal to `oldValue` here
      // because they both point to the same object!
      console.log(newValue)
      console.log(oldValue)
    })
    watch(
    () => obj.count,
    (newValue, oldValue) => {
      // Note: `newValue` will be equal to `oldValue` here
      // *unless* state.someObject has been replaced
      console.log(newValue)
      console.log(oldValue)
    },
  )
  watch(
  () => obj.count,
  (newValue, oldValue) => {
    // Note: `newValue` will be equal to `oldValue` here
    // *unless* state.someObject has been replaced
    console.log(newValue)
      console.log(oldValue)
  },
  { deep: true }
)
    return {
      textRef: ref("textRef"),
      textRef2: ref("textRef2"),
      isChecked: ref(true),
      picked: ref('picked'),
      numberList: reactive([1,2,3,4]),
      msg: ref("msg"),
      age: ref(12312312),
      question,
      answer,
      loading,
      obj
    };
  }
}
</script>
<template>
  <div class="">
    <p>
      Ask a yes/no question:
      <input v-model="question" :disabled="loading" />
    </p>
    <p>{{ answer }}</p>
  </div>
</template>

<!-- 













 -->




<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
  .about .active{
    color: green
  }
  .about .text-danger{
    color: red;
  }
  .abc{
    color: orange
  }
  .abc1{
    color:green 
  }
  .abc2{
    color:red 
  }
}
</style>
