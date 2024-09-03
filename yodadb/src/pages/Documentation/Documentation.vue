<!--
#################################################################
#                                                               #
# Copyright (c) 2022 YodaDB LLC and/or its subsidiaries.       #
# All rights reserved.                                          #
#                                                               #
#   This source code contains the intellectual property         #
#   of its copyright holder(s), and is made available           #
#   under a license.  If you do not know the terms of           #
#   the license, please stop and do not read further.           #
#                                                               #
#################################################################
-->
<template>
  <div>
    <vue-friendly-iframe
    :key="frameId"
      id="documentation_iframe"
      name="documentation_iframe"
      :src="src"
      @load="loaded = true"
    ></vue-friendly-iframe>
    <div id="documentation_loaded_confirmation" v-if="loaded"></div>
  </div>
</template>
<script>
import { uid } from 'quasar'
export default {
  data() {
    return {
      frameId:uid(),
      loaded: false,
      src: "",
      links: {
        'administration_and_operations':
          "https://docs.yodadb.com/AdminOpsGuide/index.html",
        'multi-language_programmers_guide':
          "https://docs.yodadb.com/MultiLangProgGuide/index.html",
        'm_programmers_guide':
          "https://docs.yodadb.com/ProgrammersGuide/index.html",
        'messages_and_recovery_procedures':
          "https://docs.yodadb.com/MessageRecovery/index.html",
        'acculturation_guide':
          "https://docs.yodadb.com/AcculturationGuide/acculturation.html",
        'octo_documentation':
          "https://docs.yodadb.com/Octo/index.html",
        'plugins':
          "https://docs.yodadb.com/Plugins/index.html"
      }
    };
  },
  mounted() {
      if (this.$route.params.id && this.links[this.$route.params.id]){
           this.src = this.links[this.$route.params.id];
      } else {
          this.src = this.links['administration_and_operations']
      }
   
  },
  watch:{
      '$route.params.id':{
          handler(v){
              this.frameId = uid()
              this.src="about:blank"
              setTimeout(()=>{
                  this.src=this.links[v]
              },0)
          }
      }
  }
};
</script>
<style>
#documentation_iframe > iframe {
  width: 100%;
  height: calc(100vh - 70px);
}
</style>
